%% First simple code


clc;
clear;
close all;

%% Data set 

N=audioread('north1.wav');           

S=audioread('south1.wav');          
     
L=audioread('left1.wav');           
      
R=audioread('right1.wav'); 

D=audioread('denied.wav');           %reading an extra file to use it as reference

%% Plotting The wave forms to know the difference between words

subplot(5,1,1);
plot(N);
title('NORTH WAVE FORM');

subplot(5,1,2);
plot(S);
title('SOUTH WAVE FORM');

subplot(5,1,3);
plot(L);
title('LEFT WAVE FORM');

subplot(5,1,4);
plot(R);
title('RIGHT WAVE FORM');

subplot(5,1,5);
plot(D);
title(' DENIED WAVE FORM');

%Enter the input records to test them (User)

input=audioread('tnorth1.wav');      %Enter your input here (put only the name of file with start with t)


%Testing Part 
voice=cov(input);                               % tag wave information 
% we start our detection process by setting the reference (denied record)
ref=cov(D);           %(cov_function) will take the record as an observation and convert it to
                                 %scalar-valued and then we can deal with the audio numerically
delta0 = abs(ref - voice);
sel = ref;
dif = abs(delta0);
%Now we will compare between all trained wave files and the input
one=cov(N);
delta1 = abs(one - voice);
if (delta1 <= dif) 
    sel = one;
    dif = abs(delta1);
end
 
two = cov(S);
delta2 = abs(two - voice);
if (delta2 <= dif) 
    sel = two;
    dif = abs(delta2);
end 
     
three = cov(L);
delta3 = abs(three - voice);
if (abs(delta3) <= dif) 
    sel = three;
    dif = abs(delta3);
end
 
four = cov(R);
delta4 = abs(four - voice);
if (delta4 <= dif) 
    sel = four;
end 

if sel == one
    %soundsc(M,Fs)
    disp('NORTH')  
elseif sel == two
    %soundsc(S,Fs)
    disp('SOUTH')  
elseif sel == three
    %soundsc(L,Fs)
    disp('LEFT')  
elseif sel == four
    %soundsc(R,Fs)
    disp('RIGHT')  
else
   disp('معرفتش الكلمة اني اسف')
    soundsc(audioread('denied.wav'),Fs)
  
end



