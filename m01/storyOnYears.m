%[text] # Behind Story of This Year and the Last Year
%%
%[text] ### Let's add all the 1-digit numbers and get it squared.
n =  %[output:640aa31d]
%[text] Sum all the values in n and store the result to s.
s =  %[output:6f677776]
%[text] Get it squared and store the result to y.
y =  %[output:0937ea21]
disp("The squre of the sum of 0 to 9 is " + sum(0:9)^2) %[output:8a7cc219]
%[text] In summary,
%[text] $\\left( \\sum\_{n=0}^{9} n \\right)^2 = 2025$
%%
%[text] ### How about add all the cubes of 1-digit numbers.
p =  %[output:6740696d]
q = sum(p) %[output:95143e9f]
disp("The sum of the cubed values of numbers from 0 to 9 is " + sum( (0:9).^3)) %[output:7c1ee989]
%[text] In summary,
%[text] $\\sum\_{n=0}^{9} n^3 = 2025$
%%
%[text] ### Is this just a coincidence?
%[text] Let's add all the numbers from 0 to n and get it squared.
syms n k
S1 = symsum(k, k, 0, n)^2 %[output:8a8750b3]
%[text] Ok, then, how about the sum of cubes from 0 to n.
S2 = symsum(k^3, k, 0, n) %[output:1c0f5025]
%[text] In summary,
%[text] $\\left( \\sum\_{k=0}^{n} k \\right)^2 \\equiv \\sum\_{k=0}^{n} k^3$
%%
%[text] ### Which years follow the same pattern?
yOthers = subs(S1, n, 7:11) %[output:69dff1d5]
%%
%[text] ### How to express 2026?
%[text] 먼저 소인수 분해를 해 볼까요?
n = 2026;
p = factor(2026) %[output:6392405a]
%%
%[text] 이 소수들은 몇 번째 소수일까요?
allPrimes = primes(p(end));
nPrime = length(p);
idx    = zeros(nPrime, 1);
for k=1:nPrime
    idx(k) = find( allPrimes == p(k));
end
idx %[output:86b2bb3e]

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"inline","rightPanelPercent":40}
%---
%[output:640aa31d]
%   data: {"dataType":"matrix","outputData":{"columns":10,"name":"n","rows":1,"type":"double","value":[["0","1","2","3","4","5","6","7","8","9"]]}}
%---
%[output:6f677776]
%   data: {"dataType":"textualVariable","outputData":{"name":"s","value":"45"}}
%---
%[output:0937ea21]
%   data: {"dataType":"textualVariable","outputData":{"name":"y","value":"2025"}}
%---
%[output:8a7cc219]
%   data: {"dataType":"text","outputData":{"text":"The squre of the sum of 0 to 9 is 2025\n","truncated":false}}
%---
%[output:6740696d]
%   data: {"dataType":"matrix","outputData":{"columns":10,"name":"p","rows":1,"type":"double","value":[["0","1","8","27","64","125","216","343","512","729"]]}}
%---
%[output:95143e9f]
%   data: {"dataType":"textualVariable","outputData":{"name":"q","value":"2025"}}
%---
%[output:7c1ee989]
%   data: {"dataType":"text","outputData":{"text":"The sum of the cubed values of numbers from 0 to 9 is 2025\n","truncated":false}}
%---
%[output:8a8750b3]
%   data: {"dataType":"symbolic","outputData":{"name":"S1","value":"\\frac{n^2 \\,{{\\left(n+1\\right)}}^2 }{4}"}}
%---
%[output:1c0f5025]
%   data: {"dataType":"symbolic","outputData":{"name":"S2","value":"\\frac{n^2 \\,{{\\left(n+1\\right)}}^2 }{4}"}}
%---
%[output:69dff1d5]
%   data: {"dataType":"symbolic","outputData":{"name":"yOthers","value":"\\left(\\begin{array}{ccccc}\n784 & 1296 & 2025 & 3025 & 4356\n\\end{array}\\right)"}}
%---
%[output:6392405a]
%   data: {"dataType":"matrix","outputData":{"columns":2,"name":"p","rows":1,"type":"double","value":[["2","1013"]]}}
%---
%[output:86b2bb3e]
%   data: {"dataType":"matrix","outputData":{"columns":1,"name":"idx","rows":2,"type":"double","value":[["1"],["170"]]}}
%---
