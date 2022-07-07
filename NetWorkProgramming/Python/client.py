import socket
import time
import os

s = socket.socket()
host = socket.gethostname()
port = 60000
print(host)
t1 = time.time()
s.connect((host, port))
s.send('Hello server!')

with open('received_file1', 'wb') as f:
    print('file opened')
    t2 = time.time()
    while True:
        data = s.recv(1024)
        
        f.write(data)
        t3 = time.time()
        
        if not data:
            break
            
    d = os.path.getsize('received_file1')

print(data)
print(d)

print('Total:', t3 - t1)
print('Throughput:', round((d * 0.001) / (t3 - t1), 3)) ,
print('K/sec')

f.close()
print('Successfully received the file')
s.close()
print('connection closed')