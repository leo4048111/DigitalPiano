//-------------------------------------------------------------------------
//    Color_Mapper.sv                                             --
//    Stephen Kempf                                                      --
//    3-1-06                                                             --
//                                                                       --
//    Modified by David Kesler  07-16-2008                               --
//    Translated by Joe Meng    07-07-2013                               --
//    Modified by Po-Han Huang  03-03-2017                               --
//                                                                       --
//    Spring 2017 Distribution                                           --
//                                                                       --
//    For use with ECE 385 Lab 7                                         --
//    University of Illinois ECE Department                              --
//-------------------------------------------------------------------------


module color_mapper (
	input clk,
	input [10:0] DrawX, DrawY,       // Coordinates of current drawing pixel
	input [15:0]keycode,
	input [2:0] OctaveSelect,
	input [2:0] Tone,
    output [7:0] VGA_R, VGA_G, VGA_B // VGA RGB output						 input reg  [2:0] Tone
);
   
reg ball_on;
reg [7:0] Red, Green, Blue;
reg [8:0] tempRed, tempGreen, tempBlue;
reg memBigPiano[0:12614];
reg memPianoBackground[0:10961];
reg memPianoBackgroundHighC[0:11831];
reg memCurrentOctave[0:15514];
reg memCurrentOctaveHighC[0:14551];

reg mem[0:115984];

reg memButtonSine [0:5503];
reg memButtonSquare [0:5503];
reg memButtonSaw [0:5503];
reg memButtonOrgan [0:5503];
reg memButtonSineCos [0:5503];

reg memLetterA [0:857];
reg memLetterW [0:857];
reg memLetterS [0:857];
reg memLetterE [0:857];
reg memLetterD [0:857];
reg memLetterF [0:857];
reg memLetterT [0:857];
reg memLetterG [0:857];
reg memLetterY [0:857];
reg memLetterH [0:857];
reg memLetterU [0:857];
reg memLetterJ [0:857];
reg memLetterK [0:857];	
reg data_from_Big_Piano;
reg data_from_Piano_octave;
reg data_from_Piano_octave_High_C;
reg data_from_Piano_Current_Octave;
reg data_from_Piano_Current_Octave_High_C;

reg data_from_ButtonSine;
reg data_from_ButtonSquare;
reg data_from_ButtonSaw;
reg data_from_ButtonOrgan;
reg data_from_ButtonSineCos;

reg data_from_LetterA;
reg data_from_LetterW;
reg data_from_LetterS;
reg data_from_LetterE;
reg data_from_LetterD;
reg data_from_LetterF;
reg data_from_LetterT;
reg data_from_LetterG;
reg data_from_LetterY;
reg data_from_LetterH;
reg data_from_LetterU;
reg data_from_LetterJ;
reg data_from_LetterK;
reg[3:0] key0;
reg[3:0] key1;
reg[7:0] BigOffsetX = 8'b01100100; //100;
reg[7:0] BigOffsetY = 8'b11001000; //200;
reg[7:0] ButtonOffsetX = 8'b00100011; //35;
reg[7:0] ButtonOffsetY = 8'b01111100; //124;

initial
begin	

		$readmemh("ButtonSine.txt", memButtonSine);
		$readmemh("ButtonSquare.txt", memButtonSquare);
		$readmemh("ButtonSaw.txt", memButtonSaw);
		$readmemh("ButtonOrgan.txt", memButtonOrgan);
		$readmemh("ButtonSineCos.txt", memButtonSineCos);
		$readmemh("PianoOctave.txt", memPianoBackground);
		$readmemh("PianoOctaveHighC.txt", memPianoBackgroundHighC);
		$readmemh("PianoCurrentOctave.txt", memCurrentOctave);
		$readmemh("PianoCurrentOctaveHighC.txt", memCurrentOctaveHighC);
		$readmemh("BigPiano.txt", memBigPiano);
		$readmemh("LetterA.txt", memLetterA);
		$readmemh("LetterW.txt", memLetterW);
		$readmemh("LetterS.txt", memLetterS);
		$readmemh("LetterE.txt", memLetterE);
		$readmemh("LetterD.txt", memLetterD);
		$readmemh("LetterF.txt", memLetterF);
		$readmemh("LetterT.txt", memLetterT);
		$readmemh("LetterG.txt", memLetterG);
		$readmemh("LetterY.txt", memLetterY);
		$readmemh("LetterH.txt", memLetterH);
		$readmemh("LetterU.txt", memLetterU);
		$readmemh("LetterJ.txt", memLetterJ);
		$readmemh("LetterK.txt", memLetterK);
end
		
always @ (posedge clk) 
begin
//Big Piano	
	if(DrawX >= BigOffsetX && DrawX < BigOffsetX+(145*3) && DrawY >= BigOffsetY && DrawY < BigOffsetY+(87*3))
		data_from_Big_Piano <= memBigPiano[((DrawY-BigOffsetY)/3)*145 + (DrawX-BigOffsetX)/3];

//Background 5 Octaves			
	//1st Octave
	if(DrawX >= 126*0 && DrawX < 126*1 && DrawY < 87)
		data_from_Piano_octave = memPianoBackground[DrawY*126 + DrawX - 126*0];
	//2nd Octave
	else if(DrawX >= 126*1 && DrawX < 126*2 && DrawY < 87)
		data_from_Piano_octave = memPianoBackground[DrawY*126 + DrawX - 126*1];
	//3rd Octave
	else if(DrawX >= 126*2 && DrawX < 126*3 && DrawY < 87)
		data_from_Piano_octave = memPianoBackground[DrawY*126 + DrawX - 126*2];
	//4th Octave
	else if(DrawX >= 126*3 && DrawX < 126*4 && DrawY < 87)
		data_from_Piano_octave        = memPianoBackground[DrawY*126 + DrawX - 126*3];
	//5th Octave
	else if(DrawX >= 126*4 && DrawX < 126*4+136 && DrawY < 87)			
		data_from_Piano_octave_High_C = memPianoBackgroundHighC[DrawY*136 + DrawX - 126*4];
//Current Octave
	//1st Octave
	if(OctaveSelect==1)
	begin	
		if(DrawX >= 126*0 && DrawX < 126*0+145 && DrawY < 107)
		data_from_Piano_Current_Octave = memCurrentOctave[DrawY*145 + DrawX - 126*0];
	end
	//2nd Octave
	else if(OctaveSelect==2)
	begin	
		if(DrawX >= 126*1 && DrawX < 126*1+145 && DrawY < 107)
		data_from_Piano_Current_Octave = memCurrentOctave[DrawY*145 + DrawX - 126*1];
	end
	//3rd Octave
	else if (OctaveSelect==3)
	begin	
		if(DrawX >= 126*2 && DrawX < 126*2+145 && DrawY < 107)
		data_from_Piano_Current_Octave = memCurrentOctave[DrawY*145 + DrawX - 126*2];
	end
	//4th Octave
	else if (OctaveSelect==4)
	begin	
		if(DrawX >= 126*3 && DrawX < 126*3+145 && DrawY < 107)
		data_from_Piano_Current_Octave = memCurrentOctave[DrawY*145 + DrawX - 126*3];
	end			
	//5th Octave 
	else if (OctaveSelect==5)
	begin	
		if(DrawX >= 126*4 && DrawX < 126*4+136 && DrawY < 107)
		data_from_Piano_Current_Octave_High_C = memCurrentOctaveHighC[DrawY*136 + DrawX - 126*4];
	end
			
//Buttons			
			if(DrawX>=(ButtonOffsetX*1+86*0) && DrawX<(ButtonOffsetX*1+86*1) && DrawY>=(ButtonOffsetY) && DrawY<(ButtonOffsetY+64))
				data_from_ButtonSine    = memButtonSine    [(DrawY-ButtonOffsetY)*86 + DrawX-(ButtonOffsetX*1+86*0)];
			else if (DrawX>=(ButtonOffsetX*2+86*1) && DrawX<(ButtonOffsetX*2+86*2) && DrawY>=(ButtonOffsetY) && DrawY<(ButtonOffsetY+64))
				data_from_ButtonSquare  = memButtonSquare  [(DrawY-ButtonOffsetY)*86 + DrawX-(ButtonOffsetX*2+86*1)];
			else if (DrawX>=(ButtonOffsetX*3+86*2) && DrawX<(ButtonOffsetX*3+86*3) && DrawY>=(ButtonOffsetY) && DrawY<(ButtonOffsetY+64))
				data_from_ButtonSaw     = memButtonSaw     [(DrawY-ButtonOffsetY)*86 + DrawX-(ButtonOffsetX*3+86*2)];
			else if (DrawX>=(ButtonOffsetX*4+86*3) && DrawX<(ButtonOffsetX*4+86*4) && DrawY>=(ButtonOffsetY) && DrawY<(ButtonOffsetY+64))
				data_from_ButtonOrgan   = memButtonOrgan   [(DrawY-ButtonOffsetY)*86 + DrawX-(ButtonOffsetX*4+86*3)];
			else if (DrawX>=(ButtonOffsetX*5+86*4) && DrawX<(ButtonOffsetX*5+86*5) && DrawY>=(ButtonOffsetY) && DrawY<(ButtonOffsetY+64))
				data_from_ButtonSineCos = memButtonSineCos [(DrawY-ButtonOffsetY)*86 + DrawX-(ButtonOffsetX*5+86*4)];
			
	
//Letters			
			if(DrawX>=(BigOffsetX+ 39) && DrawX<(BigOffsetX+ 39+33) && DrawY>=(BigOffsetY+109) && DrawY<(BigOffsetY+109+26))
				data_from_LetterW = memLetterW[(DrawY-(BigOffsetY+109))*33 + (DrawX-(BigOffsetX+ 39))];
			else if (DrawX>=(BigOffsetX+ 93) && DrawX<(BigOffsetX+ 93+33) && DrawY>=(BigOffsetY+109) && DrawY<(BigOffsetY+109+26))
				data_from_LetterE = memLetterE[(DrawY-(BigOffsetY+109))*33 + (DrawX-(BigOffsetX+ 93))];
			else if (DrawX>=(BigOffsetX+201) && DrawX<(BigOffsetX+201+33) && DrawY>=(BigOffsetY+109) && DrawY<(BigOffsetY+109+26))
				data_from_LetterT = memLetterT[(DrawY-(BigOffsetY+109))*33 + (DrawX-(BigOffsetX+201))];
			else if (DrawX>=(BigOffsetX+255) && DrawX<(BigOffsetX+255+33) && DrawY>=(BigOffsetY+109) && DrawY<(BigOffsetY+109+26))
				data_from_LetterY = memLetterY[(DrawY-(BigOffsetY+109))*33 + (DrawX-(BigOffsetX+255))];
			else if (DrawX>=(BigOffsetX+309) && DrawX<(BigOffsetX+309+33) && DrawY>=(BigOffsetY+109) && DrawY<(BigOffsetY+109+26))
				data_from_LetterU = memLetterU[(DrawY-(BigOffsetY+109))*33 + (DrawX-(BigOffsetX+309))];
			else if (DrawX>=(BigOffsetX+ 12) && DrawX<(BigOffsetX+ 12+33) && DrawY>=(BigOffsetY+201) && DrawY<(BigOffsetY+201+26))
				data_from_LetterA = memLetterA[(DrawY-(BigOffsetY+201))*33 + (DrawX-(BigOffsetX+ 12))];
			else if (DrawX>=(BigOffsetX+ 66) && DrawX<(BigOffsetX+ 66+33) && DrawY>=(BigOffsetY+201) && DrawY<(BigOffsetY+201+26))
				data_from_LetterS = memLetterS[(DrawY-(BigOffsetY+201))*33 + (DrawX-(BigOffsetX+ 66))];
			else if (DrawX>=(BigOffsetX+120) && DrawX<(BigOffsetX+120+33) && DrawY>=(BigOffsetY+201) && DrawY<(BigOffsetY+201+26))
				data_from_LetterD = memLetterD[(DrawY-(BigOffsetY+201))*33 + (DrawX-(BigOffsetX+120))];
			else if (DrawX>=(BigOffsetX+174) && DrawX<(BigOffsetX+174+33) && DrawY>=(BigOffsetY+201) && DrawY<(BigOffsetY+201+26))
				data_from_LetterF = memLetterF[(DrawY-(BigOffsetY+201))*33 + (DrawX-(BigOffsetX+174))];
			else if (DrawX>=(BigOffsetX+228) && DrawX<(BigOffsetX+228+33) && DrawY>=(BigOffsetY+201) && DrawY<(BigOffsetY+201+26))
				data_from_LetterG = memLetterG[(DrawY-(BigOffsetY+201))*33 + (DrawX-(BigOffsetX+228))];
			else if (DrawX>=(BigOffsetX+282) && DrawX<(BigOffsetX+282+33) && DrawY>=(BigOffsetY+201) && DrawY<(BigOffsetY+201+26))
				data_from_LetterH = memLetterH[(DrawY-(BigOffsetY+201))*33 + (DrawX-(BigOffsetX+282))];
			else if (DrawX>=(BigOffsetX+336) && DrawX<(BigOffsetX+336+33) && DrawY>=(BigOffsetY+201) && DrawY<(BigOffsetY+201+26))
				data_from_LetterJ = memLetterJ[(DrawY-(BigOffsetY+201))*33 + (DrawX-(BigOffsetX+336))];
			else if (DrawX>=(BigOffsetX+390) && DrawX<(BigOffsetX+390+33) && DrawY>=(BigOffsetY+201) && DrawY<(BigOffsetY+201+26))
				data_from_LetterK = memLetterK[(DrawY-(BigOffsetY+201))*33 + (DrawX-(BigOffsetX+390))];
		end
	
    
    assign VGA_R = Red;
    assign VGA_G = Green;
    assign VGA_B = Blue;
    
 

	always @ (posedge clk)
    begin
		if     (keycode[7:0] == 8'h04)  //c
			key0 <= 4'b0000;
		else if(keycode[7:0] == 8'h1a)  //c#
			key0 <= 4'b0001;
		else if(keycode[7:0] == 8'h16)  //d
			key0 <= 4'b0010;	
		else if(keycode[7:0] == 8'h08)  //d#
			key0 <= 4'b0011;
		else if(keycode[7:0] == 8'h07)  //e
			key0 <= 4'b0100;
		else if(keycode[7:0] == 8'h09)  //f
			key0 <= 4'b0101;
		else if(keycode[7:0] == 8'h17)  //f#
			key0 <= 4'b0110;
		else if(keycode[7:0] == 8'h0a)  //g
			key0 <= 4'b0111;
		else if(keycode[7:0] == 8'h1c)  //g#
			key0 <= 4'b1000;
		else if(keycode[7:0] == 8'h0b)  //a
			key0 <= 4'b1001;
		else if(keycode[7:0] == 8'h18)  //a#
			key0 <= 4'b1010;
		else if(keycode[7:0] == 8'h0d)  //b
			key0 <= 4'b1011;
		else if(keycode[7:0] == 8'h0e)  //High C
			key0 <= 4'b1100;
		else 
			key0 <= 4'b1111;
	end
	
	always @ (posedge clk)
    begin
		if     (keycode[15:8] == 8'h04)  //c
			key1 <= 4'b0000;
		else if(keycode[15:8] == 8'h1a)  //c#
			key1 <= 4'b0001;
		else if(keycode[15:8] == 8'h16)  //d
			key1 <= 4'b0010;	
		else if(keycode[15:8] == 8'h08)  //d#
			key1 <= 4'b0011;
		else if(keycode[15:8] == 8'h07)  //e
			key1 <= 4'b0100;
		else if(keycode[15:8] == 8'h09)  //f
			key1 <= 4'b0101;
		else if(keycode[15:8] == 8'h17)  //f#
			key1 <= 4'b0110;
		else if(keycode[15:8] == 8'h0a)  //g
			key1 <= 4'b0111;
		else if(keycode[15:8] == 8'h1c)  //g#
			key1 <= 4'b1000;
		else if(keycode[15:8] == 8'h0b)  //a
			key1 <= 4'b1001;
		else if(keycode[15:8] == 8'h18)  //a#
			key1 <= 4'b1010;
		else if(keycode[15:8] == 8'h0d)  //b
			key1 <= 4'b1011;
		else if(keycode[15:8] == 8'h0e)  //High C
			key1 <= 4'b1100;
		else 
			key1 <= 4'b1111;
	end


always @ (posedge clk)
begin : RGB_Display
				if (DrawY <87 && DrawX<126*4)   //for the top 4 piano
				begin 				
					if(data_from_Piano_octave == 1'b1)
					begin
						Red   <= 8'hff - {1'b0, DrawY[9:2]};
						Green <= 8'hff - {1'b0, DrawY[9:2]};
						Blue  <= 8'hff - {1'b0, DrawY[9:2]};
					end
					else
					begin
						Red   <= 8'h00;
						Green <= 8'h00;
						Blue  <= 8'h00;
					end
				end
				else if (DrawY <87 && DrawX>=126*4)   //for the last octave of the top 5 piano
				begin 			
					if (data_from_Piano_octave_High_C == 1'b1)
					begin
						Red   <= 8'hff - {1'b0, DrawY[9:2]};
						Green <= 8'hff - {1'b0, DrawY[9:2]};
						Blue  <= 8'hff - {1'b0, DrawY[9:2]};
					end
					else
					begin
						Red   <= 8'h00;
						Green <= 8'h00;
						Blue  <= 8'h00;
					end
				end
//BigPiano
				else if (DrawX >= BigOffsetX && DrawX < BigOffsetX+(145*3) && DrawY >= BigOffsetY && DrawY < BigOffsetY+(87*3))
				begin 				
					if(data_from_Big_Piano == 1'b1)
					begin
						Red   <= 8'hff;
						Green <= 8'hff;
						Blue  <= 8'hff;
					end
					else

					begin
						Red   <= 8'h00;
						Green <= 8'h00;
						Blue  <= 8'h00;
					end
				end

				
				else
//if no piano or other sprites detected
				begin
// Background with nice color gradient
					Red   <= (8'hff - {1'b0, DrawY[9:1]});//- {1'b0, DrawX[9:1]}; 
					Green <= (8'h00 + {1'b0, DrawY[9:1]});
					Blue  <= (8'h00 + {1'b0, DrawX[9:2]});
				end
				
				if(OctaveSelect==1)
				begin	
					if(DrawX >= 126*0 && DrawX < 126*0+145 && DrawY < 107)
					begin
						if (data_from_Piano_Current_Octave == 1'b1)
						begin
							Red   <= 8'h80;
							Green <= 8'h80;
							Blue  <= 8'hff;
						end
						else

						begin
							Red   <= 8'h00;
							Green <= 8'h00;
							Blue  <= 8'h00;
						end
					end
				end
				//2nd Octave
				else if (OctaveSelect==2)
				begin	
					if(DrawX >= 126*1 && DrawX < 126*1+145 && DrawY < 107)
					begin
						if (data_from_Piano_Current_Octave == 1'b1)
						begin
							Red   <= 8'h80;
							Green <= 8'h80;
							Blue  <= 8'hff;
						end	
						else

						begin
							Red   <= 8'h00;
							Green <= 8'h00;
							Blue  <= 8'h00;
						end
					end
				end
				//3rd Octave
				else if (OctaveSelect==3)
				begin	
					if(DrawX >= 126*2 && DrawX < 126*2+145 && DrawY < 107)
					begin
						if (data_from_Piano_Current_Octave == 1'b1)
						begin
							Red   <= 8'h80;
							Green <= 8'h80;
							Blue  <= 8'hff;
						end
						else

						begin
							Red   <= 8'h00;
							Green <= 8'h00;
							Blue  <= 8'h00;
						end
					end
				end
				//4th Octave
				else if (OctaveSelect==4)
				begin	
					if(DrawX >= 126*3 && DrawX < 126*3+145 && DrawY < 107)
					begin
						if (data_from_Piano_Current_Octave == 1'b1)
						begin
							Red   <= 8'h80;
							Green <= 8'h80;
							Blue  <= 8'hff;
						end
						else

						begin
							Red   <= 8'h00;
							Green <= 8'h00;
							Blue  <= 8'h00;
						end
					end
				end
				
				//5th Octave
				else if (OctaveSelect==5)
				begin	
					if(DrawX >= 126*4 && DrawX < 126*4+137 && DrawY < 107)
					begin
						if (data_from_Piano_Current_Octave_High_C == 1'b1)
						begin
							Red   <= 8'h80;
							Green <= 8'h80;
							Blue  <= 8'hff;
						end
						else

						begin
							Red   <= 8'h00;
							Green <= 8'h00;
							Blue  <= 8'h00;
						end
					end
				end
		
//Start drawing big keys
//C
			if (DrawX>=(BigOffsetX+3*1+((17*3)*0)) && DrawX<(BigOffsetX+3*1+((17*3)*1)-15) && DrawY>=(BigOffsetY+3)     && DrawY<(BigOffsetY+3+(49*3)))// && data_from_memKey_C==1'b1)
			begin 
				if (key0 == 4'b0000 || key1 == 4'b0000)
				begin
					Red   <= 8'hff;
					Green <= 8'hf0;
					Blue  <= 8'h80;
				end				
			end
			if (DrawX>=(BigOffsetX+3*1+((17*3)*0)) && DrawX<(BigOffsetX+3*1+((17*3)*1)) && DrawY>=(BigOffsetY+3+(49*3)) && DrawY<(BigOffsetY+3+(85*3)))// && data_from_memKey_C==1'b1)
			begin 
				if (key0 == 4'b0000 || key1 == 4'b0000)
				begin
					Red   <= 8'hff;
					Green <= 8'hf0;
					Blue  <= 8'h80;
				end				
			end	
//D		
			if (DrawX>=(BigOffsetX+3*2+((17*3)*1)+15) && DrawX<(BigOffsetX+3*2+((17*3)*2)-15) && DrawY>=(BigOffsetY+3) && DrawY<(BigOffsetY+3+(49*3)))// && data_from_memKey_D==1'b1)
			begin 
				if (key0 == 4'b0010 || key1 == 4'b0010)
				begin
					Red   <= 8'hff;
					Green <= 8'hf0;
					Blue  <= 8'h80;
				end				
			end
			if (DrawX>=(BigOffsetX+3*2+((17*3)*1)) && DrawX<(BigOffsetX+3*2+((17*3)*2)) && DrawY>=(BigOffsetY+3+(49*3)) && DrawY<(BigOffsetY+3+(85*3)))// && data_from_memKey_D==1'b1)
			begin 
				if (key0 == 4'b0010 || key1 == 4'b0010)
				begin
					Red   <= 8'hff;
					Green <= 8'hf0;
					Blue  <= 8'h80;
				end				
			end
//E
			if (DrawX>=(BigOffsetX+3*3+((17*3)*2)+15) && DrawX<(BigOffsetX+3*3+((17*3)*3)) && DrawY>=(BigOffsetY+3) && DrawY<(BigOffsetY+3+(49*3)))// && data_from_memKey_E==1'b1)
			begin 
				if (key0 == 4'b0100 || key1 == 4'b0100)
				begin
					Red   <= 8'hff;
					Green <= 8'hf0;
					Blue  <= 8'h80;
				end				
			end
			if (DrawX>=(BigOffsetX+3*3+((17*3)*2))    && DrawX<(BigOffsetX+3*3+((17*3)*3))    && DrawY>=(BigOffsetY+3+(49*3)) && DrawY<(BigOffsetY+3+(85*3)))// && data_from_memKey_E==1'b1)
			begin 
				if (key0 == 4'b0100 || key1 == 4'b0100)
				begin
					Red   <= 8'hff;
					Green <= 8'hf0;
					Blue  <= 8'h80;
				end				
			end
//F
			if (DrawX>=(BigOffsetX+3*4+((17*3)*3))    && DrawX<(BigOffsetX+3*4+((17*3)*4)-15) && DrawY>=(BigOffsetY+3) && DrawY<(BigOffsetY+3+(49*3)))// && data_from_memKey_F==1'b1)
			begin 
				if (key0 == 4'b0101 || key1 == 4'b0101)
				begin
					Red   <= 8'hff;
					Green <= 8'hf0;
					Blue  <= 8'h80;
				end				
			end
			if (DrawX>=(BigOffsetX+3*4+((17*3)*3))    && DrawX<(BigOffsetX+3*4+((17*3)*4))    && DrawY>=(BigOffsetY+3+(49*3)) && DrawY<(BigOffsetY+3+(85*3)))// && data_from_memKey_F==1'b1)
			begin 
				if (key0 == 4'b0101 || key1 == 4'b0101)
				begin
					Red   <= 8'hff;
					Green <= 8'hf0;
					Blue  <= 8'h80;
				end				
			end
//G
			if (DrawX>=(BigOffsetX+3*5+((17*3)*4)+15) && DrawX<(BigOffsetX+3*5+((17*3)*5)-15) && DrawY>=(BigOffsetY+3) && DrawY<(BigOffsetY+3+(49*3)))// && data_from_memKey_G==1'b1)
			begin 
				if (key0 == 4'b0111 || key1 == 4'b0111)
				begin
					Red   <= 8'hff;
					Green <= 8'hf0;
					Blue  <= 8'h80;
				end				
			end
			if (DrawX>=(BigOffsetX+3*5+((17*3)*4))    && DrawX<(BigOffsetX+3*5+((17*3)*5))    && DrawY>=(BigOffsetY+3+(49*3)) && DrawY<(BigOffsetY+3+(85*3)))// && data_from_memKey_G==1'b1)
			begin 
				if (key0 == 4'b0111 || key1 == 4'b0111)
				begin
					Red   <= 8'hff;
					Green <= 8'hf0;
					Blue  <= 8'h80;
				end				
			end
//A
			if (DrawX>=(BigOffsetX+3*6+((17*3)*5)+15) && DrawX<(BigOffsetX+3*6+((17*3)*6)-15) && DrawY>=(BigOffsetY+3) && DrawY<(BigOffsetY+3+(49*3)))// && data_from_memKey_A==1'b1)
			begin 
				if (key0 == 4'b1001 || key1 == 4'b1001)
				begin
					Red   <= 8'hff;
					Green <= 8'hf0;
					Blue  <= 8'h80;
				end				
			end
			if (DrawX>=(BigOffsetX+3*6+((17*3)*5))    && DrawX<(BigOffsetX+3*6+((17*3)*6))    && DrawY>=(BigOffsetY+3+(49*3)) && DrawY<(BigOffsetY+3+(85*3)))// && data_from_memKey_A==1'b1)
			begin 
				if (key0 == 4'b1001 || key1 == 4'b1001)
				begin
					Red   <= 8'hff;
					Green <= 8'hf0;
					Blue  <= 8'h80;
				end				
			end
//B
			if (DrawX>=(BigOffsetX+3*7+((17*3)*6)+15) && DrawX<(BigOffsetX+3*7+((17*3)*7))    && DrawY>=(BigOffsetY+3) && DrawY<(BigOffsetY+3+(49*3)))// && data_from_memKey_B==1'b1)
			begin 
				if (key0 == 4'b1011 || key1 == 4'b1011)
				begin
					Red   <= 8'hff;
					Green <= 8'hf0;
					Blue  <= 8'h80;
				end				
			end
			if (DrawX>=(BigOffsetX+3*7+((17*3)*6))    && DrawX<(BigOffsetX+3*7+((17*3)*7))    && DrawY>=(BigOffsetY+3+(49*3)) && DrawY<(BigOffsetY+3+(85*3)))// && data_from_memKey_B==1'b1)
			begin 
				if (key0 == 4'b1011 || key1 == 4'b1011)
				begin
					Red   <= 8'hff;
					Green <= 8'hf0;
					Blue  <= 8'h80;
				end				
			end
			
			
//High C
			if (DrawX>=(BigOffsetX+3*8+((17*3)*7))    && DrawX<(BigOffsetX+3*8+((17*3)*8))    && DrawY>=(BigOffsetY+3) && DrawY<(BigOffsetY+3+(85*3)))// && data_from_memKey_High_C==1'b1)
			begin 
				if (key0 == 4'b1100 || key1 == 4'b1100)
				begin
					Red   <= 8'hff;
					Green <= 8'hf0;
					Blue  <= 8'h80;
				end				
			end
			
			
// sharp keys
			if (DrawX>=(BigOffsetX+3*2+36+17*3*0) && DrawX<(BigOffsetX+3*1+36+17*3*0+30) && DrawY>=(BigOffsetY+3) && DrawY<(BigOffsetY+(49*3)))// && data_from_memKey_Db==1'b1)
			begin 
				if (key0 == 4'b0001 || key1 == 4'b0001)
				begin
					Red   <= 8'hff;
					Green <= 8'hf0;
					Blue  <= 8'h80;
				end				
			end
			if (DrawX>=(BigOffsetX+3*3+36+17*3*1) && DrawX<(BigOffsetX+3*2+36+17*3*1+30) && DrawY>=(BigOffsetY+3) && DrawY<(BigOffsetY+(49*3)))// && data_from_memKey_Eb==1'b1
			begin 
				if (key0 == 4'b0011 || key1 == 4'b0011)
				begin
					Red   <= 8'hff;
					Green <= 8'hf0;
					Blue  <= 8'h80;
				end				
			end
			if (DrawX>=(BigOffsetX+3*5+36+17*3*3) && DrawX<(BigOffsetX+3*4+36+17*3*3+30) && DrawY>=(BigOffsetY+3) && DrawY<(BigOffsetY+(49*3)))// && data_from_memKey_Gb==1'b1
			begin 
				if (key0 == 4'b0110 || key1 == 4'b0110)
				begin
					Red   <= 8'hff;
					Green <= 8'hf0;
					Blue  <= 8'h80;
				end				
			end
			if (DrawX>=(BigOffsetX+3*6+36+17*3*4) && DrawX<(BigOffsetX+3*5+36+17*3*4+30) && DrawY>=(BigOffsetY+3) && DrawY<(BigOffsetY+(49*3)))// && data_from_memKey_Ab==1'b1
			begin 
				if (key0 == 4'b1000 || key1 == 4'b1000)
				begin
					Red   <= 8'hff;
					Green <= 8'hf0;
					Blue  <= 8'h80;
				end				
			end
			if (DrawX>=(BigOffsetX+3*7+36+17*3*5) && DrawX<(BigOffsetX+3*6+36+17*3*5+30) && DrawY>=(BigOffsetY+3) && DrawY<(BigOffsetY+(49*3)))// && data_from_memKey_Bb==1'b1
			begin 
				if (key0 == 4'b1010 || key1 == 4'b1010)
				begin
					Red   <= 8'hff;
					Green <= 8'hf0;
					Blue  <= 8'h80;
				end				
			end
//Draw the letters			
			if      (DrawX>=(BigOffsetX+ 39) && DrawX<(BigOffsetX+ 39+33) && DrawY>=(BigOffsetY+109) && DrawY<(BigOffsetY+109+26))
			begin 
				if (data_from_LetterW == 1'b1)
				begin
					Red   <= 8'hff;
					Green <= 8'hff;
					Blue  <= 8'hff;
				end				
			end
			else if (DrawX>=(BigOffsetX+ 93) && DrawX<(BigOffsetX+ 93+33) && DrawY>=(BigOffsetY+109) && DrawY<(BigOffsetY+109+26))
			begin 
				if (data_from_LetterE == 1'b1)
				begin
					Red   <= 8'hff;
					Green <= 8'hff;
					Blue  <= 8'hff;
				end				
			end
			else if (DrawX>=(BigOffsetX+201) && DrawX<(BigOffsetX+201+33) && DrawY>=(BigOffsetY+109) && DrawY<(BigOffsetY+109+26))
			begin 
				if (data_from_LetterT == 1'b1)
				begin
					Red   <= 8'hff;
					Green <= 8'hff;
					Blue  <= 8'hff;
				end				
			end
			else if (DrawX>=(BigOffsetX+255) && DrawX<(BigOffsetX+255+33) && DrawY>=(BigOffsetY+109) && DrawY<(BigOffsetY+109+26))
			begin 
				if (data_from_LetterY == 1'b1)
				begin
					Red   <= 8'hff;
					Green <= 8'hff;
					Blue  <= 8'hff;
				end				
			end
			else if (DrawX>=(BigOffsetX+309) && DrawX<(BigOffsetX+309+33) && DrawY>=(BigOffsetY+109) && DrawY<(BigOffsetY+109+26))
			begin 
				if (data_from_LetterU == 1'b1)
				begin
					Red   <= 8'hff;
					Green <= 8'hff;
					Blue  <= 8'hff;
				end				
			end	
		///////////////////////	
			else if (DrawX>=(BigOffsetX+ 12) && DrawX<(BigOffsetX+ 12+33) && DrawY>=(BigOffsetY+201) && DrawY<(BigOffsetY+201+26))
			begin 
				if (data_from_LetterA == 1'b1)
				begin
					Red   <= 8'h00;
					Green <= 8'h00;
					Blue  <= 8'h00;
				end				
			end
			else if (DrawX>=(BigOffsetX+ 66) && DrawX<(BigOffsetX+ 66+33) && DrawY>=(BigOffsetY+201) && DrawY<(BigOffsetY+201+26))
			begin 
				if (data_from_LetterS == 1'b1)
				begin
					Red   <= 8'h00;
					Green <= 8'h00;
					Blue  <= 8'h00;
				end				
			end
			else if (DrawX>=(BigOffsetX+120) && DrawX<(BigOffsetX+120+33) && DrawY>=(BigOffsetY+201) && DrawY<(BigOffsetY+201+26))
			begin 
				if (data_from_LetterD == 1'b1)
				begin
					Red   <= 8'h00;
					Green <= 8'h00;
					Blue  <= 8'h00;
				end				
			end
			else if (DrawX>=(BigOffsetX+174) && DrawX<(BigOffsetX+174+33) && DrawY>=(BigOffsetY+201) && DrawY<(BigOffsetY+201+26))
			begin 
				if (data_from_LetterF == 1'b1)
				begin
					Red   <= 8'h00;
					Green <= 8'h00;
					Blue  <= 8'h00;
				end				
			end
			else if (DrawX>=(BigOffsetX+228) && DrawX<(BigOffsetX+228+33) && DrawY>=(BigOffsetY+201) && DrawY<(BigOffsetY+201+26))
			begin 
				if (data_from_LetterG == 1'b1)
				begin
					Red   <= 8'h00;
					Green <= 8'h00;
					Blue  <= 8'h00;
				end				
			end	
			else if (DrawX>=(BigOffsetX+282) && DrawX<(BigOffsetX+282+33) && DrawY>=(BigOffsetY+201) && DrawY<(BigOffsetY+201+26))
			begin 
				if (data_from_LetterH == 1'b1)
				begin
					Red   <= 8'h00;
					Green <= 8'h00;
					Blue  <= 8'h00;
				end				
			end	
			else if (DrawX>=(BigOffsetX+336) && DrawX<(BigOffsetX+336+33) && DrawY>=(BigOffsetY+201) && DrawY<(BigOffsetY+201+26))
			begin 
				if (data_from_LetterJ == 1'b1)
				begin
					Red   <= 8'h00;
					Green <= 8'h00;
					Blue  <= 8'h00;
				end				
			end	
			else if (DrawX>=(BigOffsetX+390) && DrawX<(BigOffsetX+390+33) && DrawY>=(BigOffsetY+201) && DrawY<(BigOffsetY+201+26))
			begin 
				if (data_from_LetterK == 1'b1)
				begin
					Red   <= 8'h00;
					Green <= 8'h00;
					Blue  <= 8'h00;
				end				
			end
//Draw Buttons		
			if      (DrawX>=(ButtonOffsetX*1+86*0) && DrawX<(ButtonOffsetX*1+86*1) && DrawY>=(ButtonOffsetY) && DrawY<(ButtonOffsetY+64))
			begin 
				if (data_from_ButtonSine == 1'b1)
				begin
					Red   <= 8'hf3;
					Green <= 8'hf7;
					Blue  <= 8'hb1;
				end
				else
				begin
					Red   <= 8'h99;
					Green <= 8'h00;
					Blue  <= 8'h00;
				end
				if (Tone == 3'b001)
				begin
				if (data_from_ButtonSine == 1'b1)
					begin
						Red   <= 8'hf3;
						Green <= 8'hf7;
						Blue  <= 8'hb1;
					end
					else
					begin
						Red   <= 8'h99;
						Green <= 8'h00;
						Blue  <= 8'h00;
					end
				end
				else
				begin
					if (data_from_ButtonSine == 1'b1)
					begin
						Red   <= 8'hb1;
						Green <= 8'hb1;
						Blue  <= 8'hb1;
					end
					else
					begin
						Red   <= 8'h99;
						Green <= 8'h99;
						Blue  <= 8'h99;
					end
				end
			end
			else if (DrawX>=(ButtonOffsetX*2+86*1) && DrawX<(ButtonOffsetX*2+86*2) && DrawY>=(ButtonOffsetY) && DrawY<(ButtonOffsetY+64))
			begin 
				if (Tone == 3'b010)
				begin
					if (data_from_ButtonSquare == 1'b1)
					begin
						Red   <= 8'hf3;
						Green <= 8'hf7;
						Blue  <= 8'hb1;
					end
					else
					begin
						Red   <= 8'h99;
						Green <= 8'h00;
						Blue  <= 8'h00;
					end
				end
				else
				begin
					if (data_from_ButtonSquare == 1'b1)
					begin
						Red   <= 8'hb1;
						Green <= 8'hb1;
						Blue  <= 8'hb1;
					end
					else
					begin
						Red   <= 8'h99;
						Green <= 8'h99;
						Blue  <= 8'h99;
					end
				end		
			end
			else if (DrawX>=(ButtonOffsetX*3+86*2) && DrawX<(ButtonOffsetX*3+86*3) && DrawY>=(ButtonOffsetY) && DrawY<(ButtonOffsetY+64))
			begin 
				if (Tone == 3'b011)
				begin
					if (data_from_ButtonSaw == 1'b1)
					begin
						Red   <= 8'hf3;
						Green <= 8'hf7;
						Blue  <= 8'hb1;
					end
					else
					begin
						Red   <= 8'h99;
						Green <= 8'h00;
						Blue  <= 8'h00;
					end
				end
				else
				begin
					if (data_from_ButtonSaw == 1'b1)
					begin
						Red   <= 8'hb1;
						Green <= 8'hb1;
						Blue  <= 8'hb1;
					end
					else
					begin
						Red   <= 8'h99;
						Green <= 8'h99;
						Blue  <= 8'h99;
					end
				end
			end
			else if (DrawX>=(ButtonOffsetX*4+86*3) && DrawX<(ButtonOffsetX*4+86*4) && DrawY>=(ButtonOffsetY) && DrawY<(ButtonOffsetY+64))
			begin 
				if (Tone == 3'b100)
				begin
					if (data_from_ButtonOrgan == 1'b1)
					begin
						Red   <= 8'hf3;
						Green <= 8'hf7;
						Blue  <= 8'hb1;
					end
					else
					begin
						Red   <= 8'h99;
						Green <= 8'h00;
						Blue  <= 8'h00;
					end
				end
				else
				begin
					if (data_from_ButtonOrgan == 1'b1)
					begin
						Red   <= 8'hb1;
						Green <= 8'hb1;
						Blue  <= 8'hb1;
					end
					else
					begin
						Red   <= 8'h99;
						Green <= 8'h99;
						Blue  <= 8'h99;
					end
				end	
			end
			else if (DrawX>=(ButtonOffsetX*5+86*4) && DrawX<(ButtonOffsetX*5+86*5) && DrawY>=(ButtonOffsetY) && DrawY<(ButtonOffsetY+64))
			begin 
				if (Tone == 3'b101)
				begin
					if (data_from_ButtonSineCos == 1'b1)
					begin
						Red   <= 8'hf3;
						Green <= 8'hf7;
						Blue  <= 8'hb1;
					end
					else
					begin
						Red   <= 8'h99;
						Green <= 8'h00;
						Blue  <= 8'h00;
					end
				end
				else
				begin
					if (data_from_ButtonSineCos == 1'b1)
					begin
						Red   <= 8'hb1;
						Green <= 8'hb1;
						Blue  <= 8'hb1;
					end
					else
					begin
						Red   <= 8'h99;
						Green <= 8'h99;
						Blue  <= 8'h99;
					end
				end
			end			
		end
endmodule
