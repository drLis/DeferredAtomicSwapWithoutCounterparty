pragma solidity >=0.6.0 <0.7.0;

contract Dex
{
	function pushAtomicSwap(uint value, address sender, address counterparty, uint8 v, bytes32 r, bytes32 s) external returns (bool)
	{
		bytes32 hash = compose(value, counterparty);
		require(sender == ecrecover(hash, v, r, s), "Check the address of token initiator");

		return true;
	}

	function redeem(string calldata secret) external returns (bool)
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

	function compose(uint value, address counterparty) public pure returns (bytes32 hash)
	{
		bytes memory prefix = "\x19Ethereum Signed Message:\n32";
		bytes memory data = abi.encodePacked(prefix, value, counterparty);
		hash = keccak256(data);
	}
}