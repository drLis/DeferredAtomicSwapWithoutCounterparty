import pytest
from brownie import *

def test_ecrecover(ecrecoverTest, accounts):
	message = "Hello world!"
	hash = web3.sha3(text = message)
	signature = web3.eth.sign(accounts[1].address, hash)
	r = signature[0:32]
	s = signature[32:64]
	v = signature[64] + 27

	assert accounts[1].address == ecrecoverTest.verify(hash, v, r, s)