.data
ss:		.asciiz	"ava"
i:		.word 0
jj:		.word 3
adres:	.word 
adres2:	.word 

d1:		.word 0
d2:		.word 0
palindrom:	.asciiz	"kelime palindrom"
degil:		.asciiz "degil"
.text
__start:
la adres, ss
la adres2,ss
add adres2,adres2,2
for:	beq i,jj,end
		#putc m[adres]
		#putc m[adres2]
		
		move d1,m[adres]
		move d2,m[adres2]
		beq d1,d2,end
		bne d1,d2,degil_yaz
		
		add adres,adres,1
		add adres2,adres2,-1
		
		add i,i,1
		b for
		
#for2:	beq i2,jj2,end
#		putc m[adres]
#		add adres,adres,-1
#		add i2,i2,-1
#		b for2
degil_yaz:	
puts degil
done

end:
puts palindrom
done

#bozalp