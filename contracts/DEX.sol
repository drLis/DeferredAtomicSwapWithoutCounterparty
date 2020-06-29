pragma solidity >=0.6.0 <0.7.0;

contract Dex
{
	function pushAtomicSwap(uint value, address sender, address counterparty, uint8 v, bytes32 r, bytes32 s) external returns (bool)
	{
		bytes32 hash = 0x0;
		require(sender == ecrecover(hash, v, r, s), "Check the address of token initiator");

		return true;
	}

	function redeem(string memory secret) external returns (bool)
	{
		return true;
	}

	function refund() external returns (bool)
	{
		return true;
	}

	function deposit(uint value) external returns (bool)
	{
		return true;
	}
}