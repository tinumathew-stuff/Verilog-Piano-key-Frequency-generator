module keyselector(A,B,C,D,E,F,G,H,I,J,K,L,key,clock);
//Ik the code is not readable, I didn't get enough time to make it readable

task testclock(input integer key,output real timerr);
real y;
real z;
real timer;

//freq calc

begin
y=$pow(1.059463094,key-49);
z=440*y;
$display(z,key);
timer=1/z;
timerr=timer*1000000000;
end

endtask





input A,B,C,D,E,F,G,H,I,J,K,L;
output integer key;
real timerr=3822256.42130527;
reg enable;
output reg clock=0;


always @(A or B or C or D or E or F or G or H or I or J or K or L)
begin
if (A | B | C | D | E| F | G | H | I | J | K | L)
begin
enable=1;
end
else
begin
enable=0;
end


if (A)
begin
key=40;
testclock(key,timerr);
end
else if (B)
begin
key=41;
testclock(key,timerr);
end
else if(C)
begin 
key=42;
testclock(key,timerr);
end
else if(D)
begin 
key=43;
testclock(key,timerr);
end
else if(F)
begin 
key=44;
testclock(key,timerr);
end
else if(G)
begin 
key=45;
testclock(key,timerr);
end
else if(H)
begin 
key=46;
testclock(key,timerr);
end
else if(I)
begin 
key=47;
testclock(key,timerr);
end
else if(J)
begin 
key=48;
testclock(key,timerr);
end
else if(K)
begin 
key=49;
testclock(key,timerr);
end
else if(L)
begin 
key=50;
testclock(key,timerr);
end

end

always@(posedge enable)
begin
while (enable)
begin #timerr clock=~clock;
end
clock=0;
end

endmodule
