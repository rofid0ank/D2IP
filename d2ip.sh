###################################################
# :---------------------------------------------: #
# : program::mengubah domain menjadi ip address : #
# : pembuat::rofi                               : #
# :---------------------------------------------: #
###################################################
# fungsi logo
logo()
{
  echo ''
  echo -e '\033[1;36m     _                       _       ____  _       '
  echo -e '\033[1;36m  __| | ___  _ __ ___   __ _(_)_ __ |___ \(_)_ __  '
  echo -e '\033[1;36m / _` |/ _ \| "_ ` _ \ / _` | | "_ \  __) | | "_ \'
  echo -e '\033[1;39m| (_| | (_) | | | | | | (_| | | | | |/ __/| | |_) |'
  echo -e '\033[1;39m \__,_|\___/|_| |_| |_|\__,_|_|_| |_|_____|_| .__/ '
  echo -e '\033[1;39m                                            |_|    '
  echo ''
  echo -e '\033[1;36m[\033[1;39m*\033[1;36m] \033[1;39mprogram : \033[1;36mmengubah domain menjadi ip address'
  echo -e '\033[1;36m[\033[1;39m*\033[1;36m] \033[1;39mpembuat : \033[1;36mrofi \033[0;39m'
  echo ''
}
# membersihkan terminal
clear
# memanggil fungsi logo
logo
# memasukan domain yang mau diubah menjadi ip address
read -r -p 'domain : ' domain
echo ''
# mengubah domain menjadi ip address menggunakan dig
ip_address=$(dig +short ${domain})
# perulangan untuk ip di dalam variabel ip address
for ip in ${ip_address}
do
  # delay 0,50 detik
  sleep 0.50
  # hasil ip address
  echo -e "\033[1;36m[\033[1;39m*\033[1;36m] \033[1;39mip address : \033[1;36m${ip}"
done

