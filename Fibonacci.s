        .data
fn:           .word    1    #fib now
fp:           .word    0    #fib previous
ft:           .word        #fib temp
i:            .word    2    #sayacimiz
istenen:     .word        #kacinci sayinin istenildigini tutar
istek:       .word    
str1:        .asciiz    ". fibonacci sayisi = "
nw:			 .byte		'-'

        .text
__start:    
            get        istek   
            
dongu:    	bge    i, istek, yaz               
            add   ft, fn, fp       
            move  fp, fn
			move  fn, ft
			add	  i, i, 1
			put   nw
			put   ft
			b     dongu
yaz:        put   nw
            done
