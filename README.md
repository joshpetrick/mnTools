# Masternode Tools

This Github is for the developement of masternode tools.

## Dynamic Tools
This section will be dedicated to dynamic masternode and wallet tools.

### Dynamic Wallet Backup Tool
With this script you will be able to back up any coin as long as the binary is installed on the system

#### Dynamic Wallet Backup Tool Instructions

Copy the command below and make sure you change the <user> tags to be your system user!

```
cd /usr/local/bin && sudo wget https://raw.githubusercontent.com/joshpetrick/mnTools/master/backupwallet.sh && sudo chmod 755 backupwallet.sh && sudo chown <user>:<user> backupwallet.sh && cd ~
```

Once installed you can run a test:
 * the binary name is required
 * the destination is optional and will create the backup in current dir if not specified
 
```
backupwallet.sh [binary name] <backup destination>
```

If you would like timely backups you can add it to a cronjob:
 * Ex: lets have Piecoin backup to a backup dir every monday

```
crontab -e
```

append the following at the bottom of the cronjob and then save and close
```
* * * * 1 /usr/local/bin/backupwallet.sh PieCoind /home/user/.PieCoin/Backups/
```





## Coin Specific Tools

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
    
 ![alt text](https://github.com/joshpetrick/mnTools/blob/master/MNStatustool.PNG)
    
##### Installing

```
cd /etc/update-motd.d/ && sudo wget https://raw.githubusercontent.com/joshpetrick/mnTools/master/50-mn-count && sudo chmod 755 50-mn-count && run-parts .
```

##### Uninstalling

```
sudo rm /etc/update-motd.d/50-mn-count
```

#### Chaincoin Masternode Auto Transfer

This tool will automatically send (your acccount total - 1001) chc to a defined wallet address

```
cd /usr/local/bin && sudo wget https://raw.githubusercontent.com/joshpetrick/mnTools/master/chcwallettransfer.sh && sudo chmod 755 chcwallettransfer.sh && sudo chown <username>:<username> chcwallettransfer.sh 
```

edit your cron
```
crontab -e
```
20 4 * * 4 /usr/local/bin/chcwallettransfer.sh
.
## Referal Coins

Sign up. Listen to music. Earn coins. Make masternodes. Earn coins. Repeat
<a href="http://bitrad.io/?ref=45925">Bitrad.io</a>


## License

This project is licensed under the MIT License - see the [License.md](LICENSE.md) file for details

## Donations

* <b>Chaincoin</b> ```CX7Vqe8nWDouVnKiBwfvaPGLRCRvunKT6y```
* <b>PieCoin</b>   ```PXWMdAWg7Eym33jKAVyf3ZWLLiCAY5dQu3```
* <b>Bitcoin</b>   ```18kd7yE2ZxbApErrJgWRFqX2sePZDosi95```
* <b>Coinonatx</b>   ```CcCJFXNwAiuhLTDe6earkH2CHJJcX6Rjc3```
* <b>Bitradio</b>   ```Bp8nzXLPAyfzBF9PpPTAcmAyBbwYX158wk```

