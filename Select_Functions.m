
%                                                                   %
%  Author and programmer: Jaza Mahmood abdullah                     %
%                                                                   %
%         e-Mail: jazamahmood@gmail.com                             %
%                 jaza.abdullah.univsul.edu.iq                      %
%                                                                   %
%                                                                   %
%                                                                   %
% this code is an implementation of this paper work                 %
%                                                                   %
% J. M. Abdullah and T. A. Rashid, "Fitness Dependent Optimizer: 
% Inspired by the Bee Swarming Reproductive Process," in IEEE Access.
% doi: 10.1109/ACCESS.2019.2907012
% keywords: {Optimization;Swarm Intelligence;Evolutionary Computation;Metaheuristic Algorithms;Fitness Dependent Optimizer;FDO},
% URL: http://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=8672851&isnumber=6514899               %
%  
% Disclaimer 
% F1 to F19 taken from this work https://link.springer.com/article/10.1007/s00521-015-1920-1


function [dimensions,fitness,upper_bound, lower_bound] = Select_Functions(func)


switch func
    case 'cec01'
        fitness = @cec01;
        lower_bound= -8192;
        upper_bound = 8192;
        dimensions = 9;
    case 'cec02'
        fitness = @cec02;
        lower_bound= -16384;
        upper_bound = 16384;
        dimensions = 16;
        
    case 'cec03'
        fitness = @cec03;
        lower_bound= -4;
        upper_bound = 4;
        dimensions = 18;
    case 'cec04'
        fitness = @cec04;
        lower_bound= -100;
        upper_bound = 100;
        dimensions = 10;
    case 'cec05'
        fitness = @cec05;
        lower_bound= -100;
        upper_bound = 100;
        dimensions = 10;
     case 'cec06'
        fitness = @cec06;
        lower_bound= -100;
        upper_bound = 100;
        dimensions = 10;
     case 'cec07'
        fitness = @cec07;
        lower_bound= -100;
        upper_bound = 100;
        dimensions = 10;
      case 'cec08'
        fitness = @cec08;
        lower_bound= -100;
        upper_bound = 100;
        dimensions = 10;
      case 'cec09'
        fitness = @cec09;
        lower_bound= -100;
        upper_bound = 100;
        dimensions = 10;
      case 'cec10'
        fitness = @cec10;
        lower_bound= -100;
        upper_bound = 100;
        dimensions = 10;
    case 'F1'
        fitness = @F1;
        lower_bound=-100;
        upper_bound=100;
        dimensions=10;
        
    case 'F2'
        fitness = @F2;
        lower_bound=-10;
        upper_bound=10;
        dimensions=10;
        
    case 'F3'
        fitness = @F3;
        lower_bound=-100;
        upper_bound=100;
        dimensions=10;
        
    case 'F4'
        fitness = @F4;
        lower_bound=-100;
        upper_bound=100;
        dimensions=10;
        
    case 'F5'
        fitness = @F5;
        lower_bound=-30;
        upper_bound=30;
        dimensions=10;
        
    case 'F6'
        fitness = @F6;
        lower_bound=-100;
        upper_bound=100;
        dimensions=10;
        
    case 'F7'
        fitness = @F7;
        lower_bound=-1.28;
        upper_bound=1.28;
        dimensions=10;
        
    case 'F8'
        fitness = @F8;
        lower_bound=-500;
        upper_bound=500;
        dimensions=10;
        
    case 'F9'
        fitness = @F9;
        lower_bound=-5.12;
        upper_bound=5.12;
        dimensions=10;
        
    case 'F10'
        fitness = @F10;
        lower_bound=-32;
        upper_bound=32;
        dimensions=10;
        
    case 'F11'
        fitness = @F11;
        lower_bound=-600;
        upper_bound=600;
        dimensions=10;
        
    case 'F12'
        fitness = @F12;
        lower_bound=-50;
        upper_bound=50;
        dimensions=10;
        
    case 'F13'
        fitness = @F13;
        lower_bound=-50;
        upper_bound=50;
        dimensions=10;
        
    case 'F14'
        fitness = @F14;
        lower_bound=-65.536;
        upper_bound=65.536;
        dimensions=2;
        
    case 'F15'
        fitness = @F15;
        lower_bound=-5;
        upper_bound=5;
        dimensions=4;
        
    case 'F16'
        fitness = @F16;
        lower_bound=-5;
        upper_bound=5;
        dimensions=2;
        
    case 'F17'
        fitness = @F17;
        lower_bound=[-5,0];
        upper_bound=[10,15];
        dimensions=2;
        
    case 'F18'
        fitness = @F18;
        lower_bound=-2;
        upper_bound=2;
        dimensions=2;
        
    case 'F19'
        fitness = @F19;
        lower_bound=0;
        upper_bound=1;
        dimensions=3;
        
    case 'F20'
        fitness = @F20;
        lower_bound=0;
        upper_bound=1;
        dimensions=6;     
        
    case 'F21'
        fitness = @F21;
        lower_bound=0;
        upper_bound=10;
        dimensions=4;    
        
    case 'F22'
        fitness = @F22;
        lower_bound=0;
        upper_bound=10;
        dimensions=4;    
        
    case 'F23'
        fitness = @F23;
        lower_bound=0;
        upper_bound=10;
        dimensions=4;            
end

end

% F1

function o = F1(x)
o=sum(x.^2);
end

% F2

function o = F2(x)
o=sum(abs(x))+prod(abs(x));
end

% F3

function o = F3(x)
dim=size(x,2);
o=0; 
for i=1:dim
    o=o+sum(x(1:i))^2;
end
end

% F4

function o = F4(x)
o=max(abs(x));
end

% F5

function o = F5(x)
dim=size(x,2);
o=sum(100*(x(2:dim)-(x(1:dim-1).^2)).^2+(x(1:dim-1)-1).^2);
end

% F6

function o = F6(x)
o=sum(abs((x+.5)).^2);
end

% F7

function o = F7(x)
dim=size(x,2);
o=sum([1:dim].*(x.^4))+rand;
end

% F8

function o = F8(x)
o=sum(-x.*sin(sqrt(abs(x))));
end

% F9

function o = F9(x)
dim=size(x,2);
o=sum(x.^2-10*cos(2*pi.*x))+10*dim;
end

% F10

function o = F10(x)
dim=size(x,2);
o=-20*exp(-.2*sqrt(sum(x.^2)/dim))-exp(sum(cos(2*pi.*x))/dim)+20+exp(1);

end

% F11

function o = F11(x)
dim=size(x,2);
o=sum(x.^2)/4000-prod(cos(x./sqrt([1:dim])))+1;
end

% F12

function o = F12(x)
dim=size(x,2);
o=(pi/dim)*(10*((sin(pi*(1+(x(1)+1)/4)))^2)+sum((((x(1:dim-1)+1)./4).^2).*...
(1+10.*((sin(pi.*(1+(x(2:dim)+1)./4)))).^2))+((x(dim)+1)/4)^2)+sum(Ufun(x,10,100,4));
end

% F13

function o = F13(x)
dim=size(x,2);
o=.1*((sin(3*pi*x(1)))^2+sum((x(1:dim-1)-1).^2.*(1+(sin(3.*pi.*x(2:dim))).^2))+...
((x(dim)-1)^2)*(1+(sin(2*pi*x(dim)))^2))+sum(Ufun(x,5,100,4));
end

% F14

function o = F14(x)
aS=[-32 -16 0 16 32 -32 -16 0 16 32 -32 -16 0 16 32 -32 -16 0 16 32 -32 -16 0 16 32;,...
-32 -32 -32 -32 -32 -16 -16 -16 -16 -16 0 0 0 0 0 16 16 16 16 16 32 32 32 32 32];

for j=1:25
    bS(j)=sum((x'-aS(:,j)).^6);
end
o=(1/500+sum(1./([1:25]+bS))).^(-1);
end

% F15

function o = F15(x)
aK=[.1957 .1947 .1735 .16 .0844 .0627 .0456 .0342 .0323 .0235 .0246];
bK=[.25 .5 1 2 4 6 8 10 12 14 16];bK=1./bK;
o=sum((aK-((x(1).*(bK.^2+x(2).*bK))./(bK.^2+x(3).*bK+x(4)))).^2);
end

% F16

function o = F16(x)
o=4*(x(1)^2)-2.1*(x(1)^4)+(x(1)^6)/3+x(1)*x(2)-4*(x(2)^2)+4*(x(2)^4);
end

% F17

function o = F17(x)
o=(x(2)-(x(1)^2)*5.1/(4*(pi^2))+5/pi*x(1)-6)^2+10*(1-1/(8*pi))*cos(x(1))+10;
end

% F18

function o = F18(x)
o=(1+(x(1)+x(2)+1)^2*(19-14*x(1)+3*(x(1)^2)-14*x(2)+6*x(1)*x(2)+3*x(2)^2))*...
    (30+(2*x(1)-3*x(2))^2*(18-32*x(1)+12*(x(1)^2)+48*x(2)-36*x(1)*x(2)+27*(x(2)^2)));
end

% F19

function o = F19(x)
aH=[3 10 30;.1 10 35;3 10 30;.1 10 35];cH=[1 1.2 3 3.2];
pH=[.3689 .117 .2673;.4699 .4387 .747;.1091 .8732 .5547;.03815 .5743 .8828];
o=0;
for i=1:4
    o=o-cH(i)*exp(-(sum(aH(i,:).*((x-pH(i,:)).^2))));
end
end

% F20

function o = F20(x)
aH=[10 3 17 3.5 1.7 8;.05 10 17 .1 8 14;3 3.5 1.7 10 17 8;17 8 .05 10 .1 14];
cH=[1 1.2 3 3.2];
pH=[.1312 .1696 .5569 .0124 .8283 .5886;.2329 .4135 .8307 .3736 .1004 .9991;...
.2348 .1415 .3522 .2883 .3047 .6650;.4047 .8828 .8732 .5743 .1091 .0381];
o=0;
for i=1:4
    o=o-cH(i)*exp(-(sum(aH(i,:).*((x-pH(i,:)).^2))));
end
end

% F21

function o = F21(x)
aSH=[4 4 4 4;1 1 1 1;8 8 8 8;6 6 6 6;3 7 3 7;2 9 2 9;5 5 3 3;8 1 8 1;6 2 6 2;7 3.6 7 3.6];
cSH=[.1 .2 .2 .4 .4 .6 .3 .7 .5 .5];

o=0;
for i=1:5
    o=o-((x-aSH(i,:))*(x-aSH(i,:))'+cSH(i))^(-1);
end
end

% F22

function o = F22(x)
aSH=[4 4 4 4;1 1 1 1;8 8 8 8;6 6 6 6;3 7 3 7;2 9 2 9;5 5 3 3;8 1 8 1;6 2 6 2;7 3.6 7 3.6];
cSH=[.1 .2 .2 .4 .4 .6 .3 .7 .5 .5];

o=0;
for i=1:7
    o=o-((x-aSH(i,:))*(x-aSH(i,:))'+cSH(i))^(-1);
end
end

% F23

function o = F23(x)
aSH=[4 4 4 4;1 1 1 1;8 8 8 8;6 6 6 6;3 7 3 7;2 9 2 9;5 5 3 3;8 1 8 1;6 2 6 2;7 3.6 7 3.6];
cSH=[.1 .2 .2 .4 .4 .6 .3 .7 .5 .5];

o=0;
for i=1:10
    o=o-((x-aSH(i,:))*(x-aSH(i,:))'+cSH(i))^(-1);
end
end

function o=Ufun(x,a,k,m)
o=k.*((x-a).^m).*(x>a)+k.*((-x-a).^m).*(x<(-a));
end

function o = cec01(x)
dim =9;
p1 = 0.0;
p2 = 0.0;
p3 = 0.0;
d = 72.661;
u = 0.0;
v = 0.0;
wk = 0.0;
pk= 0.0;
m = 32*dim;

for i=1 : dim
   u = u+ x(1,i) * (1.2)^(dim-i);
end
if u < d
    p1 = (u-d)^2;
end
  
for i=1 : dim
   v = v+ x(1,i) * (-1.2)^(dim-i);
end
if v < d
    p2 = (v-d)^2;
end

for k=0 :m
for i=1 : dim
   wk = wk+ x(1,i) * ((2*k/m)-1)^(dim-i);
end
if wk > d
    pk = pk+ (wk-d)^2;
elseif wk < d
    pk = pk +(wk+d)^2;
else
    pk = pk +0.0;
end

end
p3 =  pk;
o =  p1 + p2 + p3;
end

function o = cec02(x) 
 n = sqrt(16);
 W = 0.0;
 I =0;
 H = 0.0;
 Z = 0.0;
  for i=1:n
      xi = x(1,i);
       for k=1:n
            if i == k 
                I =1;
            else
                I =0;
            end
             H = 1/(i+k-1);
             Z = xi+(n*(k-1));
             W = W + abs(H*Z-I);
       end
  end
 o = W;
end

function o = cec03(x)
 n = 18/3;
 d = 0.0;
 sum =0.0;
  for i=1 :n-1
     xi = x(1, 3*i-1);
     for j=i+1: n
         tmp=0.0;
         xj = x(1, 3*j-1);
         for k=0 :2
             tmp = tmp + (xi+k-2-xj+k-2)^ 2;
         end
           d = d + tmp^3;
           sum = sum + (1/ d^2 )- (2/d);
     end
  end
 o = 12.7120622568+sum;
end

function o = cec04(x)
        dim = 10;
        sum =0.0;
        shiftedMatrix = [4.3453613502650342e+01  -7.5117860955706732e+01   5.4110917436941946e+01   2.1893626834216349e+00  -3.3813797325740467e+00  -3.0849165372014589e+01   7.8077592550813023e+01  -6.9901998485392895e+01   3.7111456001695004e+01   5.2241020487733664e+01];
        rotatedMatrix = [
                 8.8970810825119684e-01 1.9871231543356224e-01 3.5531377300377703e-01 0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00  -2.0660353462835387e-0 0.0000000000000000e+00 0.0000000000000000e+00;
                1.0419879983757413e-01  -6.6358499459221376e-01 4.5164451523757104e-01 0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00 5.8720932972857365e-01 0.0000000000000000e+00 0.0000000000000000e+00;
                -4.3941933258454113e-01 3.4165627723133662e-01 8.1471256710105333e-01 0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00  -1.6255790164428213e-01 0.0000000000000000e+00 0.0000000000000000e+00;
                0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00 4.2863677588379034e-01 0.0000000000000000e+00  -6.3119168084438271e-01 0.0000000000000000e+00 0.0000000000000000e+00 6.4642677573936591e-01 0.0000000000000000e+00;
                0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00 6.8398421839009127e-01 0.0000000000000000e+00  -1.0280182935971671e-01 0.0000000000000000e+00 0.0000000000000000e+00 9.1093354741887778e-01;
                0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00 1.4071437781392207e-01 0.0000000000000000e+00 7.5339632462828454e-01 0.0000000000000000e+00 0.0000000000000000e+00 6.4233436924473619e-01 0.0000000000000000e+00;
                0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00  -5.2127926340507358e-01 0.0000000000000000e+00 1.8558504533667268e+00 0.0000000000000000e+00 0.0000000000000000e+00  -1.2500979819172911e-01;
                6.6878564394300288e-02 6.3516876408991430e-01  -7.7542166446725458e-02 0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00 7.6555542658372966e-01 0.0000000000000000e+00 0.0000000000000000e+00;
                0.0000000000000000e+0 0.0000000000000000e+00 0.0000000000000000e+00  -8.9245166717105195e-01 0.0000000000000000e+00 -1.8436659152198701e-01 0.0000000000000000e+00 0.0000000000000000e+00 4.1175111620270627e-01 0.0000000000000000e+00;
                0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00  -1.2215803943548182e+00 0.0000000000000000e+00  -1.0421383218771203e-01 0.0000000000000000e+00 0.0000000000000000e+00 4.5968278525834394e-01 
                ];
            
            X_shifted = x - shiftedMatrix;
            shitedRotaatedX = X_shifted * rotatedMatrix;
            
            for i =1: dim
               Xi = shitedRotaatedX(1, i);
            sum = sum + Xi^2 - 10* cos(2*pi*Xi)+10;
            end
        o =  sum;
        
end

function o = cec05(x)
         dim = 10;
         sum = 0.0;
         multi = 1.0;
         i = 1;
         shiftedMatrix = [-1.6799910337105352e+01 4.3906964270354706e+01 2.4348491851402670e+01 -5.4897453475230122e+01 5.8499441807390866e+01 1.1845681821854726e-01 7.0903743799265357e+01 -7.7796574718223610e-01 4.4729687108066713e+01 -6.8148774722660320e+01];
         rotatedMatrix = [
                -7.5988949123997229e-01 0.0000000000000000e+00 0.0000000000000000e+00 5.9790648917707112e-01 0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00 -2.5509957135010197e-01 0.0000000000000000e+00 0.0000000000000000e+00;
                0.0000000000000000e+00 -6.4335422234689021e-02 1.3912090644901491e+00 0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00 -7.0354948113015447e-01 0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00;
                0.0000000000000000e+00 1.0874018967981698e+00 -9.3628657345778921e-01 0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00 -2.2957124131927584e-01 0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00;
                -4.8529941749281533e-02 0.0000000000000000e+00 0.0000000000000000e+00 3.3915506135367807e-01 0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00 9.3947788111907859e-01 0.0000000000000000e+00 0.0000000000000000e+00;
                0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00 -7.3880347589611128e-01 -1.8005470643130739e-01 0.0000000000000000e+00 0.0000000000000000e+00 -7.5105330032914350e-02 6.4506504795749642e-01;
                0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00 2.2733754217810664e-01 1.4610614422407869e-01 0.0000000000000000e+00 0.0000000000000000e+00 8.7440899428783569e-01 4.0296345646339404e-01;
                0.0000000000000000e+00 -9.1794081957250695e-01 1.0235511548555627e-02 0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00 -9.3534397252777979e-01 0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00;
                6.4823823233196287e-01 0.0000000000000000e+00 0.0000000000000000e+00 7.2627933645267095e-01 0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00 -2.2870399993222773e-01 0.0000000000000000e+00 0.0000000000000000e+00;
                0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00 -9.1460850041609643e-02 -8.8922500528071025e-01 0.0000000000000000e+00 0.0000000000000000e+00 3.1795773407187566e-01 -3.1593778222470387e-01;
                0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00 -6.2779134975715278e-01 3.9435033573642242e-01 0.0000000000000000e+00 0.0000000000000000e+00 3.5870737301184835e-01 -5.6718150042257454e-01
        ];
        %shifting
         x = x - shiftedMatrix;
        
        %rotating
         shitedRotaatedX = x * rotatedMatrix;

        for  m = 1 : dim
            sum =  sum + shitedRotaatedX(1,m)^ 2 / 4000;
            multi = multi * cos(shitedRotaatedX(1,m) / sqrt(i));
            i = i +1;
        end
        o = (sum - multi + 1) + 1;
end

function o = cec06(x)
  a =0.5;
  b =3.0;
  kMax = 20;
  D = 10;
  sum = 0.0;
  shiftedMatrix = [4.4867071194977996e+01 8.6557399521842626e-01  -1.2297862364117918e+01   2.9827246270062048e+01   2.6528060932889602e+01  -6.2879900924339843e+01  -2.2494835379763892e+01   9.3017723082107295e+00   1.4887184097844738e+01  -3.1096867523666873e+01];
  rotatedMatrix = [
                -1.5433743057196678e-01 0.0000000000000000e+00 7.7666311726871273e-01 0.0000000000000000e+00 1.1571979400226866e+00 0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00;
                 0.0000000000000000e+00 4.6806840267259536e-02 0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00  -5.9264454599472804e-01 1.6314935476659614e-01 7.8737783169590370e-01 0.0000000000000000e+00 0.0000000000000000e+00;
                -1.7410812843826278e+00 0.0000000000000000e+00 -4.4194799352318298e-01 0.0000000000000000e+00 4.4605580480878959e-01 0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00;
                0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00 2.7077411154472419e-01 0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00  -8.8999649318267127e-01 3.6686185770629254e-01;
                5.4888525059737507e-02 0.0000000000000000e+00 1.5570674387300532e+00 0.0000000000000000e+00  -3.0216546520289828e-01 0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00;
                0.0000000000000000e+00 6.1164921138202333e-01 0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00  -6.1748299284504526e-01  -1.5999277506278717e-01  -4.6797682388189477e-01 0.0000000000000000e+00 0.0000000000000000e+00;
                0.0000000000000000e+00 -1.1226733726002835e-01 0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00  -1.3517591002752971e-01 9.4075663040175728e-01  -2.9000082877106131e-01 0.0000000000000000e+00 0.0000000000000000e+00;
                0.0000000000000000e+00 7.8172271740335475e-01 0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00 4.9921405128267116e-01 2.5052257846765580e-01 2.7736863877405393e-01 0.0000000000000000e+00 0.0000000000000000e+00;
                0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00  -3.0159372777109039e-01 0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00 2.8348126021733977e-01 9.1031840499614625e-01;
                0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00 9.1417864987446651e-01 0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00 0.0000000000000000e+00 3.5713389257830902e-01 1.9165797370723034e-01
        ];
        %shifting
          shiftedX = x - shiftedMatrix;
        
        %rotating
        shitedRotaatedX = shiftedX * rotatedMatrix;
        
        for i =1: D
             xi = shitedRotaatedX(1, i);
             inerSum_1 = 0.0;
            for k=0 :kMax
                inerSum_1 = inerSum_1 + (a^k * cos(2 * pi * b^k *(xi+0.5)));
            end
            sum = sum + inerSum_1;
        end
        inerSum_2 =0.0;
        for k=0 : kMax
            inerSum_2  = inerSum_2 + a^k * cos(pi * b^k);
        end
        sum = sum - D * inerSum_2 +1;
        o = sum;
end

function o = cec07(x)

 D = 10;
 zi = 0.0;
 g =0.0;
 shiftedMatrix = [1.5519604466631876e+00   3.7992270681072000e+00   1.3609333677966774e+01  -6.7928874412518397e+01   7.9407748803220557e+01   4.6034135728159043e+01  -6.4280816830825444e+01  -4.7688475683186425e+01  -6.0210807314240753e+01   3.6961469555721379e+01];
 rotatedMatrix = [
                -3.4378315941460673e-02  -7.3911155710735865e-01   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00  -1.0523399031716010e+00   0.0000000000000000e+00   0.0000000000000000e+00;
                1.1485242405257232e+00   9.9172138327339543e-01   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00  -9.8221173301823295e-01   0.0000000000000000e+00   0.0000000000000000e+00;
                0.0000000000000000e+00   0.0000000000000000e+00   8.6405702281889096e-01   0.0000000000000000e+00   0.0000000000000000e+00  -4.9170053952174497e-01   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00  -1.0787048137178114e-01;
                0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00  -3.7383444140566896e-01   3.9203594526066760e-01   0.0000000000000000e+00  -7.8796970160513635e-01   0.0000000000000000e+00   2.9267623305420509e-01   0.0000000000000000e+00;
                0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   1.3610747065473336e-01  -6.0804319089793657e-01   0.0000000000000000e+00  -5.6714757040795583e-01   0.0000000000000000e+00  -5.3861105430076284e-01   0.0000000000000000e+00;
                0.0000000000000000e+00   0.0000000000000000e+00   8.5194811610211113e-02   0.0000000000000000e+00   0.0000000000000000e+00  -6.8358420399848130e-02   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   9.9401658458757081e-01;
                0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00  -8.5125893429894595e-01   8.0910637486172887e-03   0.0000000000000000e+00   2.3333420826786389e-01   0.0000000000000000e+00  -4.6994458047268511e-01   0.0000000000000000e+00;
                1.2482031580671493e+00  -4.3601697061224165e-01   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00  -1.7452756850803894e-01   0.0000000000000000e+00   0.0000000000000000e+00;
                0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   3.4217070831253948e-01   6.9030850372398578e-01   0.0000000000000000e+00  -5.4795346377890963e-02   0.0000000000000000e+00  -6.3513057403542883e-01   0.0000000000000000e+00;
                0.0000000000000000e+00   0.0000000000000000e+00   4.9613234664961658e-01   0.0000000000000000e+00   0.0000000000000000e+00   8.6807701605010890e-01   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   1.7175238382100888e-02;
        ];
        %shifting
         shiftedX = x - shiftedMatrix;
        
        %rotating
         shitedRotaatedX = shiftedX * rotatedMatrix;

        for i =1:D
            xi = shitedRotaatedX(1, i);
            zi = xi+ 420.9687462275036;
            if abs(zi) <= 500
                g = g + ( zi * sin(abs(zi)^ 1/2));
            elseif zi > 500
                g = g + ((500 - mod(zi, 500)) * sin(sqrt(abs(500- mod(zi, 500))))- ((zi - 500)^ 2)/(10000 *D));
            elseif zi < -500
                g = g + (mod(abs(zi), 500) - 500)* sin(sqrt(abs(mod(zi, 500) - 500)))- ((zi - 500)^ 2/(10000 *D));
            end
        end
                

        o =  (418.9829 * D - g);
end

function o = cec08(x)
    
     D = 10;
     g = 0.0;
     shiftedMatrix = [7.5809536201790706e+01,   5.0874943496135501e+01,   1.5175339549395872e+01,   1.1931806696547099e+01,   5.7875148867198789e+01,   6.7627011010249618e+01,  -3.2825950734701912e+01,  -2.5753998135101980e+01,  -4.7446656658987820e+01,   4.0415323917015940e+00 ];
     rotatedMatrix = [
                3.2765524541169905e-01,   0.0000000000000000e+00,   9.4933157553264147e-01,   0.0000000000000000e+00,   0.0000000000000000e+00,   0.0000000000000000e+00,   0.0000000000000000e+00,  0.0000000000000000e+00,   0.0000000000000000e+00,  -6.2503273493416478e-01;
                0.0000000000000000e+00, -3.9416689281102152e-01,  0.0000000000000000e+00,  0.0000000000000000e+00,  6.4866583791924892e-01,  0.0000000000000000e+00, -6.1484056671741649e-01,  2.1409383187478670e-01,  0.0000000000000000e+00,  0.0000000000000000e+00;
                8.9664357708578779e-01,  0.0000000000000000e+00,  5.3753076622704354e-01,  0.0000000000000000e+00,  0.0000000000000000e+00,  0.0000000000000000e+00,  0.0000000000000000e+00,  0.0000000000000000e+00,  0.0000000000000000e+00,  7.2208870049867158e-01;
                0.0000000000000000e+00,  0.0000000000000000e+00,  0.0000000000000000e+00, -1.7334340479710361e-01,  0.0000000000000000e+00,  1.7833024809453213e-01,  0.0000000000000000e+00,  0.0000000000000000e+00, -9.6858163653240936e-01,  0.0000000000000000e+00;
                0.0000000000000000e+00,  5.5409637934619971e-01,  0.0000000000000000e+00,  0.0000000000000000e+00, -3.0250402339187688e-01,  0.0000000000000000e+00, -4.5590738714655138e-01,  6.2738901215463105e-01,  0.0000000000000000e+00,  0.0000000000000000e+00;
                0.0000000000000000e+00,  0.0000000000000000e+00,  0.0000000000000000e+00, -9.6746517640794338e-01,  0.0000000000000000e+00,  1.5319756775156032e-01,  0.0000000000000000e+00,  0.0000000000000000e+00,  2.0134954102999447e-01,  0.0000000000000000e+00;
                0.0000000000000000e+00,  6.2594545303749249e-01,  0.0000000000000000e+00,  0.0000000000000000e+00,  6.9750321067293941e-01,  0.0000000000000000e+00,  3.4700267475621172e-01,  3.5646944254231774e-02,  0.0000000000000000e+00,  0.0000000000000000e+00;
                0.0000000000000000e+00,  3.8184021897755271e-01,  0.0000000000000000e+00,  0.0000000000000000e+00, -3.4831274010388026e-02,  0.0000000000000000e+00, -5.4194896030516160e-01, -7.4784768097931698e-01,  0.0000000000000000e+00,  0.0000000000000000e+00;
                0.0000000000000000e+00,  0.0000000000000000e+00,  0.0000000000000000e+00, -1.8429106449108246e-01,  0.0000000000000000e+00, -9.7197161884987071e-01,  0.0000000000000000e+00,  0.0000000000000000e+00, -1.4597251693095872e-01,  0.0000000000000000e+00;
                1.7153665513641250e+00,  0.0000000000000000e+00, -7.8944707263781244e-01,  0.0000000000000000e+00,  0.0000000000000000e+00,  0.0000000000000000e+00,  0.0000000000000000e+00,  0.0000000000000000e+00,  0.0000000000000000e+00, -3.0034616211515719e-01
        ];
        %shifting
         shiftedX = x - shiftedMatrix;
        %rotating
         shitedRotaatedX = shiftedX * rotatedMatrix;


        for i=1 : D-1 
            j =i+1;
            xi = shitedRotaatedX(1,i) ;
            yi = shitedRotaatedX(1,j) ;
            g = g + ( 0.5 +((sin(sqrt(xi^2+ yi^2)))^ 2)- 0.5 / ((1+ 0.001 *(xi^2+ yi^2)))^2);
        end
        xi = shitedRotaatedX(1, D-1) ;
        yi = shitedRotaatedX(1, 1) ;
        g = g + ( 0.5 +((sin(sqrt(xi^2+ yi^2)))^2)-0.5 /((1+ 0.001 *(xi^2+ yi^2)))^2);
        o =  g+1;
end

function o = cec09(x)

  D = 10;
  sum1=0.0;
  sum2=0.0;
  sum3=0.0;
  shiftedMatrix = [-6.0107960952496171e+00,  -6.3449972860258995e+01,  -3.6938623728667750e+00,  -2.7449007717635965e+00,  -5.3547271030744199e+01,   3.1015786282259867e+01,   2.3200459416583499e+00,  -4.6987858548289097e+01,   3.5061378905112562e+01,  -3.4047417731046465e+00];
  rotatedMatrix = [
                -7.6923624057192400e-02,  0.0000000000000000e+00,  7.2809258658661558e-02,  6.1371429917067155e-01,  0.0000000000000000e+00,  7.8239141541106805e-01,  0.0000000000000000e+00,  0.0000000000000000e+00,  0.0000000000000000e+00,  0.0000000000000000e+00;
                0.0000000000000000e+00, -1.1499983823069659e+00,  0.0000000000000000e+00,  0.0000000000000000e+00,  1.5729072158274271e-01,  0.0000000000000000e+00,  0.0000000000000000e+00, -1.3309066870600375e+00,  0.0000000000000000e+00,  0.0000000000000000e+00;
                -1.6730831752378217e-02,  0.0000000000000000e+00,  4.9480374519689890e-01,  6.5982384537901573e-01,  0.0000000000000000e+00, -5.6526261691115431e-01,  0.0000000000000000e+00,  0.0000000000000000e+00,  0.0000000000000000e+00,  0.0000000000000000e+00;
                9.1421044415115027e-01,  0.0000000000000000e+00, -3.3249140365486585e-01,  2.2489758522716782e-01,  0.0000000000000000e+00, -5.5586027556918202e-02,  0.0000000000000000e+00,  0.0000000000000000e+00,  0.0000000000000000e+00,  0.0000000000000000e+00;
                0.0000000000000000e+00, -1.2704704488967578e+00,  0.0000000000000000e+00,  0.0000000000000000e+00, -7.6341623484218024e-01,  0.0000000000000000e+00,  0.0000000000000000e+00,  4.9980922801223232e-01,  0.0000000000000000e+00,  0.0000000000000000e+00;
                -3.9751993551989051e-01,  0.0000000000000000e+00, -7.9957334378299227e-01,  3.7068629354440513e-01,  0.0000000000000000e+00, -2.5544478964007222e-01,  0.0000000000000000e+00,  0.0000000000000000e+00,  0.0000000000000000e+00,  0.0000000000000000e+00;
                0.0000000000000000e+00,  0.0000000000000000e+00,  0.0000000000000000e+00,  0.0000000000000000e+00,  0.0000000000000000e+00,  0.0000000000000000e+00,  9.0184624725396623e-02,  0.0000000000000000e+00, -3.4243496198122719e-01, -9.3520320266563195e-01;
                0.0000000000000000e+00,  9.7696981452382070e-01,  0.0000000000000000e+00,  0.0000000000000000e+00, -6.8376531090322690e-01,  0.0000000000000000e+00,  0.0000000000000000e+00, -4.7094671586086240e-01,  0.0000000000000000e+00,  0.0000000000000000e+00;
                0.0000000000000000e+00,  0.0000000000000000e+00,  0.0000000000000000e+00,  0.0000000000000000e+00,  0.0000000000000000e+00,  0.0000000000000000e+00, -6.1661688294908079e-01,  0.0000000000000000e+00, -7.5660067900409822e-01,  2.1757534831110126e-01;
                0.0000000000000000e+00,  0.0000000000000000e+00,  0.0000000000000000e+00,  0.0000000000000000e+00,  0.0000000000000000e+00,  0.0000000000000000e+00, -7.8208078427058847e-01,  0.0000000000000000e+00,  5.5704013261474550e-01, -2.7938492717261593e-01;
        ];
        %shifting
        ShiftedX = x - shiftedMatrix;
       
        %rotating
        shitedRotaatedX = ShiftedX * rotatedMatrix;

        for i= 1 :D
            xi = shitedRotaatedX(1, i);
            sum1 = sum1  + xi^2- D;
            sum2 = sum2 + xi^2;
            sum3 = sum3 + xi;
        end

        o =  (((abs(sum1))^1/4 )+(0.5 * sum2+sum3)/D + 0.5);
end

function o = cec10(x)

  D = 10;
  sum1=0.0;
  sum2=0.0;

  
  shiftedMatrix = [6.1441309549566370e-001  1.8049534213689469e+001  5.1107558757100151e+001  5.1022671188681272e+000 -4.7667984552250942e+001 -7.3770454911164904e+000 -1.1534252828772665e+001  7.4568439937919834e+001  1.9208808661355789e+001  3.1262392306880571e+001];
  rotatedMatrix = [
               -3.6144665808053256e-02  0.0000000000000000e+00   0.0000000000000000e+00  -1.0275628429515489e-01   0.0000000000000000e+00   0.0000000000000000e+00  -9.9404965126067890e-01   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00;
                0.0000000000000000e+00   5.7732032557209267e-01   6.3720045355332378e-01   0.0000000000000000e+00  -1.2849837048835189e-01   0.0000000000000000e+00   0.0000000000000000e+00   4.9413054191641514e-01   0.0000000000000000e+00   0.0000000000000000e+00;
                0.0000000000000000e+00  -3.9586712917636224e-01  -2.8968310271397846e-01   0.0000000000000000e+00  -5.1670886261404880e-01   0.0000000000000000e+00   0.0000000000000000e+00   7.0170140895951061e-01   0.0000000000000000e+00   0.0000000000000000e+00;
                8.7364129527216294e-01   0.0000000000000000e+00   0.0000000000000000e+00   4.7972086095511046e-01   0.0000000000000000e+00   0.0000000000000000e+00  -8.1355901812131204e-02   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00;
                0.0000000000000000e+00   7.1410594914990388e-01  -6.7354832197676640e-01   0.0000000000000000e+00  -1.9014210237853424e-01   0.0000000000000000e+00   0.0000000000000000e+00  -1.5209610582332084e-02   0.0000000000000000e+00   0.0000000000000000e+00;
                0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00  -2.7911553415074425e-01   0.0000000000000000e+00   0.0000000000000000e+00   1.6909147808954352e+00  -5.7964733149576031e-01;
                -4.8522618471059614e-01   0.0000000000000000e+00   0.0000000000000000e+00   8.7138340677473369e-01   0.0000000000000000e+00   0.0000000000000000e+00  -7.2432783108600157e-02   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00;
                0.0000000000000000e+00  -6.5689502748026013e-03   2.3746987168001482e-01   0.0000000000000000e+00  -8.2483095297218667e-01   0.0000000000000000e+00   0.0000000000000000e+00  -5.1304854346890183e-01   0.0000000000000000e+00   0.0000000000000000e+00;
                0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00  -1.3268067876803948e+00   0.0000000000000000e+00   0.0000000000000000e+00   7.1252154299165178e-04  -8.8929149979214617e-01;
                0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00   0.0000000000000000e+00  -6.6352395365628714e-01   0.0000000000000000e+00   0.0000000000000000e+00   4.6075742954200716e-01   6.9770224192342367e-01
        ];
        %shifting

         shiftedX = x - shiftedMatrix;
      
        %rotating
        shitedRotaatedX = shiftedX * rotatedMatrix;

%         for i =1:D
%             xi = shitedRotaatedX(1, i);
%             sum1 = sum1 + xi^2;
%             sum2 = sum2 + cos(2 * pi *xi);
%         end
 o=-20*exp(-.2*sqrt(sum(shitedRotaatedX.^2)/D))-exp(sum(cos(2*pi.*shitedRotaatedX))/D)+20+exp(1);

end