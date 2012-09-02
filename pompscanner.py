#!/usr/bin/env python

""" pompscanner.py - jwaixs - September 2012

========
This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
========


Informatie:

Dit programma is geschreven om de tijd te meten dat pompen aan hebben
gestaan. Hiervoor worden de nulletjes en eentjes uit logfiles van de
pompen uitgelezen en wordt de tijd berekend. Uitvoer is hoe lang de
pomp per jaar per maand aan heeft gestaan.
"""

import time
import datetime
import gzip
import os
import sys

if len(sys.argv) < 6:
    print "usage: ./%s filename begin_time end_time places logfile"
    sys.exit(1)

filename = sys.argv[1]
f = gzip.open(filename, 'r')
f.readline()
f.readline()

plaatspompen = map(int, sys.argv[4].split(','))
aantalpompen = len(plaatspompen)

begintijd = time.mktime(\
    datetime.datetime.strptime(sys.argv[2], '%d-%m-%Y').timetuple())
eindtijd = time.mktime(\
    datetime.datetime.strptime(sys.argv[3], '%d-%m-%Y').timetuple())

# tijdpompen : pompnr -> jaar -> maand
tijdpompen = { i : {} for i in range(aantalpompen)}

line = f.readline()
workline = line.split('|')
t = workline[1] + workline[2]
t = datetime.datetime.strptime(t, ' %d-%m-%Y %H:%M:%S')
curtime = time.mktime(t.timetuple())

pold = [ 0 for i in range(aantalpompen) ]
pnew = [ 0 for i in range(aantalpompen) ]

curyear = 0

for line in f:
    # Progress
    if curyear != t.timetuple()[0]:
        curyear = t.timetuple()[0]
        for i in range(aantalpompen):
            tijdpompen[i][curyear] = { j : 0 for j in range(12) }
        sys.stdout.write("Jaar: %s\r" % curyear)
        sys.stdout.flush()

    # Time
    workline = line.split('|')
    t = workline[1] + workline[2]
    try:
        t = datetime.datetime.strptime(t, ' %d-%m-%Y %H:%M:%S')
    except:
        break

    if time.mktime(t.timetuple()) <= begintijd:
        continue

    if time.mktime(t.timetuple()) >= eindtijd:
        break

    for i in range(aantalpompen):

        # On/off machine
        try:
            pnew[i] = int(workline[plaatspompen[i]])
        except:
            pnew[i] = 0

        if pold[i] == 0 and pnew[i] == 1:
            # Pomp gaat aan
            starttime = time.mktime(t.timetuple())

        if pold[i] == 1 and pnew[i] == 0:
            # Pomp gaat uit
            endtime = time.mktime(t.timetuple())
            tijdpompen[i][curyear][t.timetuple()[1]-1] += endtime - starttime

        pold[i] = pnew[i]

logfile = open(sys.argv[5], 'w')
logfile.write(filename + '\n')
logfile.write('Pomp,jaar,maand,seconden\n')
for pomp in tijdpompen.keys():
    #logfile.write('Pomp : %i\n' % pomp)
    for jaar in tijdpompen[pomp].keys():
        #logfile.write('\tjaar: %i\n' % jaar)
        for maand in tijdpompen[pomp][jaar].keys():
            #logfile.write('\t\tmaand: %i -> %i seconden\n' \
            #    % (maand, tijdpompen[pomp][jaar][maand]))
            logfile.write('%i,%i,%i,%i\n' \
                % (pomp, jaar, maand, tijdpompen[pomp][jaar][maand]))
logfile.close()
print
