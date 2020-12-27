tampilkan_deret(){
	pertama=$1
	beda=$2
	n=$3
	
	i=1
	echo "Deret : "
	printf "S$n = $pertama "
	while [ $i -lt $n ]
	do
		let pertama=$pertama+$beda
		printf "%s + "$pertama
		let i=$i+1
	done
}

run=1
while [ $run -eq 1 ]
do
	clear
	echo "=============Program Deret=============="
	echo "Silahkan pilih menu : "
	echo ""
	echo "1. Deret Aritmatika "
	echo "2. Deret Pangkat"
	echo "3. Deret Ganjil/Genap"
	echo "0. Keluar"
	echo ""
	echo "Input : "
	read pilihan
	clear
	
	case $pilihan in
		1)
			echo "=============Program Deret=============="
			echo "|          Deret Aritmatika            |"
			echo "========================================"
			echo ""
			echo "Silahkan pilih apa yang dicari oleh program : "
			echo "1. Suku ke-n"
			echo "2. Jumlah suku-n pertama"
			echo ""
			echo "Input : "
			read metode
			clear
			
			case $metode in
			 1)
				echo "=============Program Deret=============="
				echo "|          Deret Aritmatika            |"
				echo "========================================"
				echo ""
				echo "Masukkan suku pertama : "
				read a
				suku_a=1
				echo "Masukkan suku kedua : "
				read b
				suku_b=2
				echo "-----------------------------"
				echo "Berapa suku ke-n yang dicari : "
				read suku_n
				clear
				
				pertama=$a
				let beda=$(($a-$b))/$((suku_a-$suku_b))
				let n=$(($pertama+$(($suku_n-1))*beda))
				let sn=$(($suku_n/2))*$(($pertama+$n))
				
				echo "=============Program Deret=============="
				echo "|          Deret Aritmatika            |"
				echo "========================================"
				echo ""
				echo "U$suku_a = $a"
				echo "U$suku_b = $b"
				echo ""
				echo "Suku Pertama = $pertama"
				echo "Beda : $beda"
				echo "U$suku_n = $n"
				echo ""
				echo "Jumlah $suku_n suku pertama = $sn"
				echo ""
				echo "-------------------------------------"
				tampilkan_deret $pertama $beda $suku_n
				echo ""
				echo "Tekan Enter untuk kembali..."
				read
				;;
			 2)
				echo "=============Program Deret=============="
				echo "|          Deret Aritmatika            |"
				echo "========================================"
				echo ""
				echo "-----------Input Pertama-------------"
				echo "Masukkan nilai dari suatu deret : "
				read a
				echo "Suku ke berapakan nilai tersebut"
				read suku_a
				echo "-----------Input Pertama-------------"
				echo "Masukkan nilai dari suatu deret : "
				read b
				echo "Suku ke berapakan nilai tersebut"
				read suku_b
				echo "-----------------------------"
				echo "Berapa batas suku-n yang dicari : "
				read suku_n
				clear
				
				let beda=$(($a-$b))/$((suku_a-$suku_b))
				if [ $suku_a -eq 1 ]
				then
					pertama=$a
				elif [ $suku_b -eq 1 ]
				then
					pertama=$b
				else
					let pertama=$a-$(( $beda*$(($suku_a-1)) ))
				fi
				let n=$(($pertama+$(($suku_n-1))*beda))
				let sn=$(($suku_n/2))*$(($pertama+$n))
				
				echo "=============Program Deret=============="
				echo "|          Deret Aritmatika            |"
				echo "========================================"
				echo ""
				echo "U$suku_a = $a"
				echo "U$suku_b = $b"
				echo ""
				echo "Suku Pertama = $pertama"
				echo "Beda : $beda"
				echo "U$suku_n = $n"
				echo ""
				echo "Jumlah $suku_n suku pertama = $sn"
				echo ""
				echo "-------------------------------------"
				tampilkan_deret $pertama $beda $suku_n
				echo ""
				echo "Tekan Enter untuk kembali..."
				read
				;;
			 *)
				;;
			esac
			;;
		2)
			echo "=============Program Deret=============="
			echo "|            Deret Pangkat             |"
			echo "========================================"
			echo ""
			echo "Masukan bilangan yang ingin dipangkatkan : "
			read dipangkatkan
			echo "Masukkan Pangkat bilangan : "
			read pangkat
			echo ""
			printf "Deret : "
			
			declare -a deret
			i=1
			deret[0]=$dipangkatkan
			printf $dipangkatkan
			while [ $i -lt $pangkat ]
			do
				let deret[$i]=${deret[$i-1]}*$dipangkatkan
				let i=$i+1
			done
			
			j=1
			while [ $j -lt $pangkat ]
			do
				printf "%s, "${deret[$j]}
				let j=$j+1
			done
			echo ""
			echo "Tekan Enter untuk kembali..."
			read
			;;
		3)
			echo "=============Program Deret=============="
			echo "|          Deret Ganjil/Genap          |"
			echo "========================================"
			echo ""
			echo "Silahkan pilih metode deret : "
			echo "1. Ganjil"
			echo "2. Genap"
			echo ""
			echo "Input : "
			read metode
			clear
			
			case $metode in
				1)
					echo "=============Program Deret=============="
					echo "|          Deret Ganjil/Genap          |"
					echo "========================================"
					echo ""
					echo "Masukkan bilangan pertama : "
					read awal
					echo "Masukkan bilangan akhir : "
					read akhir
					echo ""
					printf "Deret: "
					
					if [ $awal -lt $akhir ]
					then
						if [[ $(($awal%2)) -eq 0 ]]
						then
							let i=$awal+1
						else
							i=$awal
						fi
						
						printf $i
						while [ $i -lt $akhir ]
						do
							let i=$i+2
							if [ $i -le $akhir ]
							then
								printf "%s, "$i
							fi
						done
					else
						echo "Tidak dapat menghitung..."
					fi
					echo ""
					echo "Tekan Enter untuk kembali..."
					read
					;;
				2)
					echo "=============Program Deret=============="
					echo "|          Deret Ganjil/Genap          |"
					echo "========================================"
					echo ""
					echo "Masukkan bilangan pertama : "
					read awal
					echo "Masukkan bilangan akhir : "
					read akhir
					echo ""
					printf "Deret: "
					
					if [ $awal -lt $akhir ]
					then
						if [[ $(($awal%2)) -eq 1 ]]
						then
							let i=$awal+1
						else
							i=$awal
						fi
						
						printf $i
						while [ $i -lt $akhir ]
						do
							let i=$i+2
							if [ $i -le $akhir ]
							then
								printf "%s, "$i
							fi
						done
					else
						echo "Tidak dapat menghitung..."
					fi
					echo ""
					echo "Tekan Enter untuk kembali..."
					read
					;;
				*)
					;;
			esac
			;;
		0)
			run=0
			echo "Terima kasih"
			;;
		*)
			;;
	esac
done
