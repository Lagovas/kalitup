# Install Kali linux tools on Ubuntu/Debian host

## Set hosts that should be configured with space as delimiter
```
export HOST=x.x.x.x
```

Install dependencies and run installation menu:
```
make install
```
or
```
make HOST=<host> install
```

## Installation menu

```
Main Menu
0) View Categories              
1) Install All                  
2) Uninstall All                
3) Search repository            
4) List installed packages      
5) List not installed packages  
6) Install Kali Menu            
7) Uninstall old katoolin       
8) Help                         
9) Exit                         

kat> 
```

Choose `1` to install all packages

```
Install everything?
0) Yes  
1) No   

kat> 
```

Choose `0` and confirm

Wait installation finish.