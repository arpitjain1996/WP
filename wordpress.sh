# Will create 2GB Swap Space in instance.
echo ""
echo ""
echo -n "Do we need 2GB of Swap? (y/n) : "
read twogbswaprun
if [ "$twogbswaprun" == n ] ; then
echo "**********************************************************************************************"
echo "*                                                                                            *"
echo "*                       Okay! 2GB of SWAP will not be created.                               *"
echo "*                                                                                            *"
echo "**********************************************************************************************"
else
sudo bash swap-2gb.sh
fi

# Will install MySql in instance.
echo ""
echo ""
echo -n "Do we need in-server DataBase for WordPress? (y/n) : "
read sqldbrun
if [ "$sqldbrun" == n ] ; then
echo "**********************************************************************************************"
echo "*                                                                                            *"
echo "*                       Okay! SQL DB will not be installed.                                  *"
echo "*                                                                                            *"
echo "**********************************************************************************************"
else
sudo bash mysql-install.sh
fi

# Will install WordPress in instance.
echo ""
echo ""
echo -n "Proceed with WordPress installation? (y/n) : "
read wpinstallrun
if [ "$wpinstallrun" == n ] ; then
echo "**********************************************************************************************"
echo "*                                                                                            *"
echo "*                       Okay! WordPress is not installed.                                    *"
echo "*                                                                                            *"
echo "**********************************************************************************************"
else
sudo bash wp-install.sh
fi
