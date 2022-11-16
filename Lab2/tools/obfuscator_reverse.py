# OBFUSCATOR PASS REVERSE

import hashlib, sys

with open('seeds.txt', 'r') as (f):
    lines = f.readlines()

l = len(lines)

# backup_1634405485.zip --> Oct 16 18:31:25
pw = hashlib.sha256(str(lines[l-3] + str(1634405485)).encode('utf-8'))
print("backup_1634405485.zip -->", pw.hexdigest())

# backup_1634412601.zip --> Oct 16 20:30:01
pw = hashlib.sha256(str(lines[l-2] + str(1634412601)).encode('utf-8'))
print("backup_1634412601.zip -->", pw.hexdigest())

# backup_1634414401.zip --> Oct 16 21:00:01 
pw = hashlib.sha256(str(lines[l-1] + str(1634414401)).encode('utf-8'))
print("backup_1634414401.zip -->", pw.hexdigest())