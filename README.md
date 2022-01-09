# About

This is a small example implementing ERC1167's minimal proxy contract to create a contract factory, which is capable of cloning an already existing contract and its functionality, deploying the cloned contract for less gas than you would spend creating an NFT.

The storage of the cloned contract does not reflect that of the implementation contract. This means that the newly cloned contract replicates the implementation contract at genesis.


# How to use

To test this example, first deploy the `NFTImplementation` contract. After this, we deploy the `Factory` contract. 

We can clone the NFTImplementation contract by passing its address to the the Factory's `clone(address implementation)` function. After this transaction completes, we can find the new contracts address in the return values of the transaction. That's really how it easy it is! Using this method, we can create many uniquely independent contracts with identical functionalities for an exceptionally low gas fee.