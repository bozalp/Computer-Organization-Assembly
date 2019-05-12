	.data
sayi:	.word 7
i:		.word 1
temp:	.word 0
toplam:	.word 0
nn:	.asciiz "1-7 arasi sayilarin toplami : "
	.text
__start:
		add sayi,sayi,1
for:	beq i,sayi,end
		mul temp,i,i
		add toplam,toplam,temp
		add i,i,1
		#put toplam
		b for
end:	
	puts nn
	put toplam		