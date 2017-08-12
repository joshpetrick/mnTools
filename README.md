# Masternode Tools

This Github is for the developement of masternode tools.

### Chaincoind Tools

This section will be dedicated to chaincoin tools. Masternodes must be on Ubuntu system and must be configured as normal model and not
controller styled model.

#### Chaincoin Masternode Putty Login Status

This tool will update your welcome message so that everytime you login to putty you are greeted to:
  * Your MN Balance
  * Your MN Status
  * Your last mn transactions
    * type of transaction
    * amount
    * time
    
##### Installing

```
cd /etc/update-motd.d/ && sudo wget https://raw.githubusercontent.com/joshpetrick/mnTools/master/50-mn-count && sudo chmod 755 50-mn-count && run-parts .
```

##### Uninstalling

```
sudo rm /etc/update-motd.d/50-mn-count
```

.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Donations

Chaincoin CX7Vqe8nWDouVnKiBwfvaPGLRCRvunKT6y
PieCoin PXWMdAWg7Eym33jKAVyf3ZWLLiCAY5dQu3
Bitcoin 18kd7yE2ZxbApErrJgWRFqX2sePZDosi95
