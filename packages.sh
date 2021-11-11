# NOTE: UN-COMMENT THE SCRIPT NEEDED TO EXECUTED BELOW. 
# Will attach sdb disk to instance.
#sudo sh sdb-disk-attach.sh
# Will install Jenkins in instance.
#sudo sh jenkins-install.sh


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
