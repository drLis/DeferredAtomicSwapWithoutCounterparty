pragma solidity >=0.6.0 <0.7.0;

contract EcrecoverTest
{
	function test(address sender, string message, uint8 v, bytes32 r, bytes32 s) pure returns (bool)
	{
		return sender == ecrecover(message, v, r, s);
	}
}