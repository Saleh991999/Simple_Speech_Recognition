%%Second simple code (more complex)

clc;
clear;
close all;

%%  DATA SET

%record word 'move' repeted 10 times
move1=audioread('move_1.wav');       
move2=audioread('move_2.wav'); 
move3=audioread('move_3.wav'); 
move4=audioread('move_4.wav'); 
move5=audioread('move_5.wav'); 
move6=audioread('move_6.wav'); 
move7=audioread('move_7.wav'); 
move8=audioread('move_8.wav'); 
move9=audioread('move_9.wav'); 
move10=audioread('move_10.wav'); 
%record word 'stop' repeted 10 times
stop1=audioread('stop_1.wav');  
stop2=audioread('stop_2.wav');     
stop3=audioread('stop_3.wav');     
stop4=audioread('stop_4.wav');     
stop5=audioread('stop_5.wav');     
stop6=audioread('stop_6.wav');     
stop7=audioread('stop_7.wav');     
stop8=audioread('stop_8.wav');     
stop9=audioread('stop_9.wav');     
stop10=audioread('stop_10.wav');     
%record word 'left' repeted 10 times
left1=audioread('left_1.wav'); 
left2=audioread('left_2.wav'); 
left3=audioread('left_3.wav'); 
left4=audioread('left_4.wav'); 
left5=audioread('left_5.wav'); 
left6=audioread('left_6.wav'); 
left7=audioread('left_7.wav'); 
left8=audioread('left_8.wav'); 
left9=audioread('left_9.wav'); 
left10=audioread('left_10.wav'); 
%record word 'right' repeted 10 times
right1=audioread('right_1.wav');   
right2=audioread('right_2.wav');  
right3=audioread('right_3.wav');  
right4=audioread('right_4.wav');  
right5=audioread('right_5.wav');  
right6=audioread('right_6.wav');  
right7=audioread('right_7.wav');  
right8=audioread('right_8.wav');  
right9=audioread('right_9.wav');  
right10=audioread('right_10.wav');  
reference=audioread('reference.wav');    %reading an extra file to use it as reference 

%% Plotting The wave forms to know the difference between words
subplot(5,1,1);
plot(move1);
title('MOVE WAVE FORM');

subplot(5,1,2);
plot(stop1);
title('STOP WAVE FORM');

subplot(5,1,3);
plot(left1);
title('LEFT WAVE FORM');

subplot(5,1,4);
plot(right1);
title('RIGHT WAVE FORM');

subplot(5,1,5);
plot(reference);
title(' DENIED WAVE FORM');

%%getting input from user 

input=audioread('reference.wav');      %choose input here (put the name of file that ends with test)

%Testing

inputcov=cov(input); 
ref=cov(reference);
delta0 = abs(ref - inputcov);
sel = ref;
dif = abs(delta0);
%check the word move
a1=cov(move1);
dif11 = abs(a1 - inputcov);
if (dif11 <= dif) 
    sel = a1;
    dif = abs(dif11); 
end
a2=cov(move2);
dif12 = abs(a2 - inputcov);
if (dif12 <= dif) 
    sel = a2;
    dif = abs(dif12); 
end
a3=cov(move3);
dif13 = abs(a3 - inputcov);
if (dif13 <= dif) 
    sel = a3;
    dif = abs(dif13); 
end
a4=cov(move4);
dif14 = abs(a4 - inputcov);
if (dif14 <= dif) 
    sel = a4;
    dif = abs(dif14); 
end
a5=cov(move5);
dif15 = abs(a5 - inputcov);
if (dif15 <= dif) 
    sel = a5;
    dif = abs(dif15); 
end
a6=cov(move6);
dif16 = abs(a6 - inputcov);
if (dif16 <= dif) 
    sel = a6;
    dif = abs(dif16); 
end
a7=cov(move7);
dif17 = abs(a7 - inputcov);
if (dif17 <= dif) 
    sel = a7;
    dif = abs(dif17); 
end
a8=cov(move8);
dif18 = abs(a8 - inputcov);
if (dif18 <= dif) 
    sel = a8;
    dif = abs(dif18); 
end
a9=cov(move9);
dif19 = abs(a9 - inputcov);
if (dif19 <= dif) 
    sel = a9;
    dif = abs(dif19); 
end
a10=cov(move10);
dif110 = abs(a10 - inputcov);
if (dif110 <= dif) 
    sel = a10;
    dif = abs(dif110); 
end

%check the word stop
b1 = cov(stop1);
dif21 = abs(b1 - inputcov);
if (dif21 <= dif) 
    sel = b1;
    dif = abs(dif21);
end 
b2 = cov(stop2);
dif22 = abs(b2 - inputcov);
if (dif22 <= dif) 
    sel = b2;
    dif = abs(dif22);
end 
b3 = cov(stop3);
dif23 = abs(b3 - inputcov);
if (dif23 <= dif) 
    sel = b3;
    dif = abs(dif23);
end 
b4 = cov(stop4);
dif24 = abs(b4 - inputcov);
if (dif24 <= dif) 
    sel = b4;
    dif = abs(dif24);
end 
b5 = cov(stop5);
dif25 = abs(b5 - inputcov);
if (dif25 <= dif) 
    sel = b5;
    dif = abs(dif25);
end 
b6 = cov(stop6);
dif26 = abs(b6 - inputcov);
if (dif26 <= dif) 
    sel = b6;
    dif = abs(dif26);
end 
b7 = cov(stop7);
dif27 = abs(b7 - inputcov);
if (dif27 <= dif) 
    sel = b7;
    dif = abs(dif27);
end 
b8 = cov(stop8);
dif28 = abs(b8 - inputcov);
if (dif28 <= dif) 
    sel = b8;
    dif = abs(dif28);
end 
b9 = cov(stop9);
dif29 = abs(b9 - inputcov);
if (dif29 <= dif) 
    sel = b9;
    dif = abs(dif29);
end 
b10 = cov(stop10);
dif210 = abs(b10 - inputcov);
if (dif210 <= dif) 
    sel = b10;
    dif = abs(dif210);
end 

%check the word left
c1 = cov(left1);
dif31 = abs(c1 - inputcov);
if (abs(dif31) <= dif) 
    sel = c1;
    dif = abs(dif31);
end
c2 = cov(left2);
dif32 = abs(c2 - inputcov);
if (abs(dif32) <= dif) 
    sel = c2;
    dif = abs(dif32);
end
c3 = cov(left3);
dif33 = abs(c3 - inputcov);
if (abs(dif33) <= dif) 
    sel = c3;
    dif = abs(dif33);
end
c4 = cov(left4);
dif34 = abs(c4 - inputcov);
if (abs(dif34) <= dif) 
    sel = c4;
    dif = abs(dif34);
end
c5 = cov(left5);
dif35 = abs(c5 - inputcov);
if (abs(dif35) <= dif) 
    sel = c5;
    dif = abs(dif35);
end
c6 = cov(left6);
dif36 = abs(c6 - inputcov);
if (abs(dif36) <= dif) 
    sel = c6;
    dif = abs(dif36);
end
c7 = cov(left7);
dif37 = abs(c7 - inputcov);
if (abs(dif37) <= dif) 
    sel = c7;
    dif = abs(dif37);
end
c8 = cov(left8);
dif38 = abs(c8 - inputcov);
if (abs(dif38) <= dif) 
    sel = c8;
    dif = abs(dif38);
end
c9 = cov(left9);
dif39 = abs(c9 - inputcov);
if (abs(dif39) <= dif) 
    sel = c9;
    dif = abs(dif39);
end
c10 = cov(left10);
dif310 = abs(c10 - inputcov);
if (abs(dif310) <= dif) 
    sel = c10;
    dif = abs(dif310);
end

%check the word right
d1 = cov(right1);
dif41 = abs(d1 - inputcov);
if (dif41 <= dif) 
    sel = d1;
    dif = abs(dif41);
end 
d2 = cov(right2);
dif42 = abs(d2 - inputcov);
if (dif42 <= dif) 
    sel = d2;
    dif = abs(dif42);
end 
d3 = cov(right3);
dif43 = abs(d3 - inputcov);
if (dif43 <= dif) 
    sel = d3;
    dif = abs(dif43);
end 
d4 = cov(right4);
dif44 = abs(d4 - inputcov);
if (dif44 <= dif) 
    sel = d4;
    dif = abs(dif44);
end 
d5 = cov(right5);
dif45 = abs(d5 - inputcov);
if (dif45 <= dif) 
    sel = d5;
    dif = abs(dif45);
end 
d6 = cov(right6);
dif46 = abs(d6 - inputcov);
if (dif46 <= dif) 
    sel = d6;
    dif = abs(dif46);
end 
d7 = cov(right7);
dif47 = abs(d7 - inputcov);
if (dif47 <= dif) 
    sel = d7;
    dif = abs(dif47);
end 
d8 = cov(right8);
dif48 = abs(d8 - inputcov);
if (dif48 <= dif) 
    sel = d8;
    dif = abs(dif48);
end 
d9 = cov(right9);
dif49= abs(d9 - inputcov);
if (dif49 <= dif) 
    sel = d9;
    dif = abs(dif49);
end 
d10 = cov(right10);
dif410 = abs(d10 - inputcov);
if (dif410 <= dif) 
    sel = d10;
    dif = abs(dif410);
end 


%display the detected word
%check if it is move
if sel == a1
    disp('Move')
elseif sel == a2
   disp('Move')
elseif sel == a3 
   disp('Move')
elseif sel == a4   
   disp('Move')
elseif sel == a5
   disp('Move')
elseif sel == a6
   disp('Move')
elseif sel == a7
   disp('Move')
elseif sel == a8 
   disp('Move')
elseif sel == a9  
   disp('Move')
elseif sel == a10
   disp('Move')
  
%check if it is stop   
elseif sel == b1 
    disp('Stop')
elseif sel == b2
    disp('Stop')
elseif sel == b3
    disp('Stop')
elseif sel == b4
   disp('Stop')
elseif sel == b5
    disp('Stop')
elseif sel == b6
    disp('Stop')
elseif sel == b7
    disp('Stop')
elseif sel == b8
    disp('Stop')
elseif sel == b9
    disp('Stop')
elseif sel == b10
    disp('Stop')


%check if it is left
elseif sel == c1 
    disp('Left')
elseif sel == c2 
    disp('Left')
elseif sel == c3 
    disp('Left')
elseif sel == c4 
    disp('Left')
elseif sel == c5 
    disp('Left')
elseif sel == c6 
    disp('Left')
elseif sel == c7 
    disp('Left')
elseif sel == c8 
    disp('Left')
elseif sel == c9 
    disp('Left')
elseif sel == c10
    disp('Left')
    
%check if it is right
elseif sel == d1
    disp('Right')
elseif sel == d2
    disp('Right')
elseif sel == d3
    disp('Right')
elseif sel == d4
    disp('Right')
elseif sel == d5
    disp('Right')
elseif sel == d6
    disp('Right')
elseif sel == d7
    disp('Right')
elseif sel == d8
    disp('Right')
elseif sel == d9
    disp('Right')
elseif sel == d10
    disp('Right')

%the test failed
else
    disp('معرفتش الكلمة اني اسف')
    fs=50000;  %samplingfrequency
    soundsc(reference,fs)
end