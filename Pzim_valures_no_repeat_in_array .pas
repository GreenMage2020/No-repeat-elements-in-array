Program Pzim_valures_no_repeat_in_array ;
var
	vet:array[0..5] of integer;
	i,j,t:integer;
	//o array vai receeber valores aleatorios e não vai repetir os valores	
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
	
	    {                    /////ANOTAÇÃO|||||||
			  O VET[5 - 1] TAMBEM PODE SER ESCRITO DESSA FORMA "VET[5 -I+1]" QUE VAI MANIPULAR A POSIÇÃO
			  DO VETOR DO MESMO JEITO, A DIFERENÇA E QUE O ARRAY PODE RECEBER [1..5] AO EM VEZ DE [0..5]
			  
			  SE ATRIBUIR "VET ARRAY[1..5]..." E NO CODIGO USAR VET[]:=VET[5 - I]; O PROGRAMA NÃO EXECUTARA
			  PORQUE VET[] NÃO POSSUI A POSIÇÃO ZERO
			  
			  FOR I = 1 - 5 = VET[4]
			  FOR I = 2 - 5 = VET[3]
			  FOR I = 3 - 5 = VET[2]
			  FOR I = 4 - 5 = VET[1]
			  FOR I = 5 - 5 = ?? O ARRAY NÃO TEM A POSIÇÃO ZERO
			  
			  POR ISSO NESTE CASO DEVE SER VET[0..5]:= VET[5 - 1]
			  
				OU VET[1..5]:= VET[5 - I+1]
				
				VOCE ESCOLHE
			  
			  
			  
			}
	
	for i:= 0 to 5 do
	begin
		writeln(' ',vet[i]);
	end;
	 
End.