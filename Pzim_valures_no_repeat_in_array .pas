Program Pzim_valures_no_repeat_in_array ;
var
	vet:array[0..5] of integer;
	i,j,t:integer;
	//o array vai receeber valores aleatorios e n�o vai repetir os valores	
Begin
  for i := 0 to 5 do
	begin
	    vet[i]:=i;
	    
			//writeln(vet[i]);
	end;
	
	for i := 0 to 5 do
	begin
	    j:= random(5);
	    
	    t:= vet[j]; // a var-t vai receber o valor de vet[j] que no momento vale o mesmo que var-j
	    vet[j]:= vet[5 - i];//vet[j] vai receber a cordenada de vet[5 - 1], ou seja, vet[j] vai ser 
	    										//igual a vet[4].     vet[j] = vet[4];
	    
			vet[5 - i]:= t;// vet[5-1] vai receber o valor da var-t, var-t obteve o valor de vet[j]
	end;
	
	    {                    /////ANOTA��O|||||||
			  O VET[5 - 1] TAMBEM PODE SER ESCRITO DESSA FORMA "VET[5 -I+1]" QUE VAI MANIPULAR A POSI��O
			  DO VETOR DO MESMO JEITO, A DIFEREN�A E QUE O ARRAY PODE RECEBER [1..5] AO EM VEZ DE [0..5]
			  
			  SE ATRIBUIR "VET ARRAY[1..5]..." E NO CODIGO USAR VET[]:=VET[5 - I]; O PROGRAMA N�O EXECUTARA
			  PORQUE VET[] N�O POSSUI A POSI��O ZERO
			  
			  FOR I = 1 - 5 = VET[4]
			  FOR I = 2 - 5 = VET[3]
			  FOR I = 3 - 5 = VET[2]
			  FOR I = 4 - 5 = VET[1]
			  FOR I = 5 - 5 = ?? O ARRAY N�O TEM A POSI��O ZERO
			  
			  POR ISSO NESTE CASO DEVE SER VET[0..5]:= VET[5 - 1]
			  
				OU VET[1..5]:= VET[5 - I+1]
				
				VOCE ESCOLHE
			  
			  
			  
			}
	
	for i:= 0 to 5 do
	begin
		writeln(' ',vet[i]);
	end;
	 
End.