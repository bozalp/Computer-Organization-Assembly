.data
dizi1: 		.word 0:7
adres1:		.word
sayi:		.word 9
sayac:		.word 1

.text
__start:

la adres1,dizi1

ekle:

move	m[adres1],sayi
add		adres1,adres1,4
add sayac,sayac,1
ble sayac,7,ekle#sayac 7den buyuk esitse ekleye git

yaz:	ble sayac,7,yaz	
	#move sayi,m[adres1]
	put sayi
	add adres1,adres1,4
	add sayac,sayac,1
	
done
	
	
	