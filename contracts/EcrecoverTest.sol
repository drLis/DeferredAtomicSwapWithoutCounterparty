pragma solidity >=0.6.0 <0.7.0;

contract EcrecoverTest
{
	function verify(bytes32 message, uint8 v, bytes32 r, bytes32 s) external pure returns (address)
	{
		bytes memory prefix = "\x19Ethereum Signed Message:\n32";
		bytes32 prefixedHash = keccak256(abi.encodePacked(prefix, message));
		return ecrecover(prefixedHash, v, r, s);
	}
}