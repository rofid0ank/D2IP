###################################################
# :---------------------------------------------: #
# : program::mengubah domain menjadi ip address : #
# : pembuat::rofi                               : #
# :---------------------------------------------: #
###################################################
# fungsi setup
setup()
{
  # membersihkan terminal
  clear
  # menampilkan keluaran ke terminal
  echo -e '\033[1;33mtunggu beberapa saat !\033[1;39m'
  # delay selama 3 detik
  sleep 3
  # update repositori
  apt-get update -y
  # install package dnsutils
  apt-get install dnsutils -y
  # membersihkan terminal
  clear
  # mengubah izin akses file d2ip.sh
  chmod +x 'd2ip.sh'
  # memindahkan file d2ip.sh ke /usr/bin
  mv 'd2ip.sh' /usr/bin
  echo ''
  # menampilkan keluaran ke terminal
  echo -e '\033[1;32muntuk menjalankan d2ip ketikan \033[1;33mbash d2ip.sh'
  echo ''
}
# memanggil fungsi setup
setup
