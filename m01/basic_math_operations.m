%[text] # Basic MATLAB Operations
%[text]   by Your Name
d = datetime('today');
s = string(d,"yyyy-MM-dd");

disp("on " + s); %[output:62c8985f]
%%
%[text] ### Mathematical Expressions
%[text] - Basic Arithmetic Operaions: $-4 + \\frac{7 \\times ( 2 - 5)}{\\pi}$ \
a =  %[output:4f3df3d8]
%[text] - Powers and Squreroots: $2^3 - \\sqrt{25} + e^3$ \
b =  %[output:9406bd28]
%[text] - Complex Numbers: $(2+3i)(1-2i)^2$ \
c =  %[output:3c67880f]
%%
%[text] ### Generating Arrays, aka Vectors
%[text] - Zeros and Ones \
z =  %[output:42a166e6]
k =  %[output:469eee61]
w =  %[output:0a63002b]
%[text] - Evenly Spaced Numbers \
s =  %[output:1274f5ea]
sl = length(s) %[output:1b480a1c]
m =  %[output:6e0e7baa]
n = linspace(1, 2, 11) %[output:3033a50e]
%%
%[text] ### Matrix Operations
%[text] - Operations on Matrix with a Scalar \
M = magic(3) %[output:6af241c2]
M1 =  %[output:40dd068f]
M2 =  %[output:401efca0]
M3 =  %[output:1fb24bc8]
%[text] - Operations on Two Matrices \
N1 = randi(9, 2, 3) %[output:3798ec5f]
[r,c] = size(N1) %[output:910e252f] %[output:58ae355a]
N2 = randi(9, 2, 3) %[output:3a45bdec]
N3 = N1 + N2 %[output:216a4296]
E1 =  %[output:819fae1b]
E2 = [1 1; 1 0] %[output:9f3c4d7d]
E3 = E1 * E2 %[output:974adb53]
%%
%[text] ### Part of Matrices
R = magic(4) %[output:87d92465]
r1 =  %[output:45ac538c]
r2 =  %[output:775203af]
%%
%[text] ### Basic Statistics
k = round(10*sin(0:10)) %[output:024e3ebe]
[min(k), max(k), mean(k), median(k), var(k)] %[output:089a08bd]
k1 =  %[output:3fc41e49]

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"inline","rightPanelPercent":40}
%---
%[output:62c8985f]
%   data: {"dataType":"text","outputData":{"text":"on 2026-03-02\n","truncated":false}}
%---
%[output:4f3df3d8]
%   data: {"dataType":"not_yet_implemented_variable","outputData":{"columns":"1","name":"a","rows":"1","value":"-10.6845"},"version":0}
%---
%[output:9406bd28]
%   data: {"dataType":"not_yet_implemented_variable","outputData":{"columns":"1","name":"b","rows":"1","value":"1.2854"},"version":0}
%---
%[output:3c67880f]
%   data: {"dataType":"not_yet_implemented_variable","outputData":{"columns":"1","name":"c","rows":"1","value":"6.0000 -17.0000i"},"version":0}
%---
%[output:42a166e6]
%   data: {"dataType":"matrix","outputData":{"columns":3,"name":"z","rows":1,"type":"double","value":[["0","0","0"]]}}
%---
%[output:469eee61]
%   data: {"dataType":"matrix","outputData":{"columns":4,"name":"k","rows":4,"type":"double","value":[["1","1","1","1"],["1","1","1","1"],["1","1","1","1"],["1","1","1","1"]]}}
%---
%[output:0a63002b]
%   data: {"dataType":"matrix","outputData":{"columns":4,"name":"w","rows":2,"type":"double","value":[["9","9","9","9"],["9","9","9","9"]]}}
%---
%[output:1274f5ea]
%   data: {"dataType":"matrix","outputData":{"columns":6,"name":"s","rows":1,"type":"double","value":[["10","12","14","16","18","20"]]}}
%---
%[output:1b480a1c]
%   data: {"dataType":"not_yet_implemented_variable","outputData":{"columns":"1","name":"sl","rows":"1","value":"6"},"version":0}
%---
%[output:6e0e7baa]
%   data: {"dataType":"matrix","outputData":{"columns":5,"name":"m","rows":1,"type":"double","value":[["10","8","6","4","2"]]}}
%---
%[output:3033a50e]
%   data: {"dataType":"matrix","outputData":{"columns":11,"name":"n","rows":1,"type":"double","value":[["1.0000","1.1000","1.2000","1.3000","1.4000","1.5000","1.6000","1.7000","1.8000","1.9000","2.0000"]]}}
%---
%[output:6af241c2]
%   data: {"dataType":"matrix","outputData":{"columns":3,"name":"M","rows":3,"type":"double","value":[["8","1","6"],["3","5","7"],["4","9","2"]]}}
%---
%[output:40dd068f]
%   data: {"dataType":"matrix","outputData":{"columns":3,"name":"M1","rows":3,"type":"double","value":[["7","0","5"],["2","4","6"],["3","8","1"]]}}
%---
%[output:401efca0]
%   data: {"dataType":"matrix","outputData":{"columns":3,"name":"M2","rows":3,"type":"double","value":[["16","2","12"],["6","10","14"],["8","18","4"]]}}
%---
%[output:1fb24bc8]
%   data: {"dataType":"matrix","outputData":{"columns":3,"name":"M3","rows":3,"type":"double","value":[["0.1250","1.0000","0.1667"],["0.3333","0.2000","0.1429"],["0.2500","0.1111","0.5000"]]}}
%---
%[output:3798ec5f]
%   data: {"dataType":"matrix","outputData":{"columns":3,"name":"N1","rows":2,"type":"double","value":[["1","8","2"],["5","9","6"]]}}
%---
%[output:910e252f]
%   data: {"dataType":"not_yet_implemented_variable","outputData":{"columns":"1","name":"r","rows":"1","value":"2"},"version":0}
%---
%[output:58ae355a]
%   data: {"dataType":"not_yet_implemented_variable","outputData":{"columns":"1","name":"c","rows":"1","value":"3"},"version":0}
%---
%[output:3a45bdec]
%   data: {"dataType":"matrix","outputData":{"columns":3,"name":"N2","rows":2,"type":"double","value":[["5","4","8"],["1","2","3"]]}}
%---
%[output:216a4296]
%   data: {"dataType":"matrix","outputData":{"columns":3,"name":"N3","rows":2,"type":"double","value":[["6","12","10"],["6","11","9"]]}}
%---
%[output:819fae1b]
%   data: {"dataType":"matrix","outputData":{"columns":2,"name":"E1","rows":2,"type":"double","value":[["2","1"],["1","2"]]}}
%---
%[output:9f3c4d7d]
%   data: {"dataType":"matrix","outputData":{"columns":2,"name":"E2","rows":2,"type":"double","value":[["1","1"],["1","0"]]}}
%---
%[output:974adb53]
%   data: {"dataType":"matrix","outputData":{"columns":2,"name":"E3","rows":2,"type":"double","value":[["3","2"],["3","1"]]}}
%---
%[output:87d92465]
%   data: {"dataType":"matrix","outputData":{"columns":4,"name":"R","rows":4,"type":"double","value":[["16","2","3","13"],["5","11","10","8"],["9","7","6","12"],["4","14","15","1"]]}}
%---
%[output:45ac538c]
%   data: {"dataType":"matrix","outputData":{"columns":4,"name":"r1","rows":1,"type":"double","value":[["5","11","10","8"]]}}
%---
%[output:775203af]
%   data: {"dataType":"matrix","outputData":{"columns":2,"name":"r2","rows":2,"type":"double","value":[["11","10"],["7","6"]]}}
%---
%[output:024e3ebe]
%   data: {"dataType":"matrix","outputData":{"columns":11,"name":"k","rows":1,"type":"double","value":[["0","8","9","1","-8","-10","-3","7","10","4","-5"]]}}
%---
%[output:089a08bd]
%   data: {"dataType":"matrix","outputData":{"columns":5,"name":"ans","rows":1,"type":"double","value":[["-10.0000","10.0000","1.1818","1.0000","49.3636"]]}}
%---
%[output:3fc41e49]
%   data: {"dataType":"matrix","outputData":{"columns":11,"name":"k1","rows":1,"type":"double","value":[["-10","-8","-5","-3","0","1","4","7","8","9","10"]]}}
%---
