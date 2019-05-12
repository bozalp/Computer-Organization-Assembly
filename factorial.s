		.data
sayi:	.word
al:		.asciiz "Sayi Gir : "
counter:	.word
sonuc:		.word
kiyas:		.word 1
carpim:		.word  
		.text
		
__start:
		puts al
		get sayi
		move counter,sayi
		sub counter, counter, 1
		mul sonuc, sayi, counter
		
for:	ble counter, kiyas, end
		sub counter, counter, 1
		mul sonuc, sonuc, counter	
		b for
end:
		put sonuc
		