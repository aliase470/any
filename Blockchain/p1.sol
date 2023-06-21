/*Create Block chain with 3 block and hence display the entire block chain along with 
hash value and Timestamp of each *\
import datetime
import hashlib
class Block:
    def __init__(self, previous_block_hash, data, timestamp):
        self.previous_block_hash = previous_block_hash
        self.data = data
        self.timestamp = timestamp
        self.hash= self.get_hash()
    @staticmethod
    def create_genesis_block():
        return Block("0", "o", datetime.datetime.now())
    def get_hash(self):
        header = (str(self.previous_block_hash) + str(self.data) + str(self.timestamp))
        inner_hash = hashlib.sha256 (header.encode()).hexdigest ().encode()
        comp_hash = hashlib.sha256 (inner_hash).hexdigest ()
        return comp_hash

number_of_blocks = 4

Blockchain = [Block.create_genesis_block()]
print ("Bhargesh Patel Genesis block is created")
print ("Hash: %s " % Blockchain [0].hash)

for i in range (1, number_of_blocks):
    Blockchain.append (Block (Blockchain [i-1].hash, "Block number %d" %i, datetime))
    print ("%d block created" %i)
    print ("Hash: %s " % Blockchain [-1].hash)
    print("timestamp: ", datetime.datetime.now())