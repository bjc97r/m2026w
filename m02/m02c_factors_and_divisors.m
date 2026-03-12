%[text] # 소인수 분해와 약수, 그리고 소수
%[text] ### 소인수 분해: `factor`
%[text] - `24를 소인수 분해하기 위해 factor() 함수를 사용합니다.` \
x = 24;
k = factor(x) %[output:4c21bb62]
%[text] 소인수 분해 결과: $24 = 2^3 \\times 3$
%[text] - 서로 다른 소인수의 갯수 구하기 \
kUnique = unique(k) %[output:954526b6]
%%
%[text]  소인수들을 모두 곱하면 원래 수가 나와야 되겠지요.
%[text] $p = \\prod\_{i=1}^{n} k\_i$
p = prod(k) %[output:04e96170]
%%
%[text] ### 인수 구하기: `divisors()`
%[text] 그렇다면 어떻게 모든 인수를 구할 수 있을까요?
%[text] 인수들은 원래 숫자를 나누었을 때 나머지가 0입니다.
%[text] Matlab에서는 `divisors()`함수를 이용합니다.
d = divisors(x) %[output:069733a2]
%[text] 원래 숫자를 인수로 나눈 나머지를 구해 볼까요?
%[text] $x = d\_i \\times q\_i + r\_i$
q = floor(x ./d), r = rem( x, d) %[output:434d3889] %[output:5b0d1cc6]
fprintf("24 = %2d x %2d + %d\n", [d; q; r]); %[output:39df360d]
%%
%[text] 정수 60에 대해서도 위와 같이 모든 인수와 몫의 곱과 나머지의 합으로 나타내시오.
% 여러분의 솔루션
%%
%[text] ### 합집합: `uinon()`
%[text] 그렇다면 24의 인수이거나, 60의 인수인 숫자들을 모구 구하면 어떻게 될까요?
%[text] 두 벡터 a와 b의 합집합 c는 다음과 같이 구할 수 있습니다.
a = divisors(24) %[output:5fc3589f]
b  = divisors(60) %[output:2fd4c22a]
c1 = [a, b] %[output:8fb98732]
%%
%[text] 그런데 중복되는 숫자가 있습니다.  
%[text] 이럴때는 중복을 제거하여 최종적으로 c는 이렇게 구할 수 있습니다.
c = unique([a, b]) %[output:7db17682]
%[text] 이 과정을 한꺼번에 하는 명령은 `union(a, b)`입니다. 
union(a, b) %[output:6693800a]
%[text] 그 갯수는 `length(c)`로 쉽게 구할 수 있습니다.
nDivisors = length(c) %[output:1e82d21f]
%%
%[text] ### 교집합: `intersect()`
%[text] `교집은 intersect(a,b)로 구할 수 있는데요,`
%[text] `예를 들어 24와 60의 약수를 모두 구하고 공약수를 구해보겠습니다.`
v = intersect(a,b) %[output:8628ecd1]
%%
%[text] 공약수 가운데 가장 큰 공약수는 최대공약수라고 합니다.
%[text] 이 최대공약수를 한번에 구해주는 함수는 `gcd(n,m)`입니다.
gcd(24, 60) %[output:6acd347e]
%[text] 또한 최소 공배수는 `lcm(n,m)` 함수로 구할 수 있습니다. 
lcm(24,60) %[output:586654c1]
%%
%[text] ### 소수 입니까? : `isprime(n)`
%[text] 1과 자신만을 인수로 갖는 자연수를 소수라고 합니다.
%[text] 17은 소수입니다.
isprime(17) %[output:4d65e2cd]
%[text] 그렇지만 81은 소수가 아니지요.
isprime(81) %[output:78445895]
%[text] 여러 숫자들을 한꺼번에 검사할 수도 있습니다. 
%[text] 예를 들어 2~15사이의 소수는 2, 3, 5, 7, 11, 13 입니다. 
n = 2:15;
p = isprime(n);
[n; p] %[output:3adc6fe5]
%%
%[text] ### 다른 소수 관련 함수들:  `primes(n)`, `nextprime(n)`
%[text] 10보다 작거나 같은 소수들은 이렇게 구합니다.
primes(10) %[output:6d86bc98]
%[text] 2026년 이후로 처음 소수인 해는 언제일까요?
nextprime(2026) %[output:2cd20205]
%%
%[text] ### 복습하기
%[text] 다음 함수들을 어떻게 사용하는지 배웠어요.
%[text] - `factor(2023)`: 2023을 소인수 분해
%[text] - `prod([2, 4, 3])`:주어진 배열의 곱을 계산, $2 \\times 4 \\times 3$
%[text] - `divisors(2025)`: 2025의 인수 모두 구하기
%[text] - `unique([2, 2, 4, 3, 4])`: 중복을 제거하고 정렬
%[text] - `union(a,b)`: a와 b의 합집합
%[text] - `intersect(a,b)`: a와 b의  교집합
%[text] - `gcd(6, 8)`: 6과 8의 최대공약수
%[text] - `lcm(6, 8)`: 6과 8의 최소공배수
%[text] - `isprime(2025)`: 2025가 소수니?
%[text] - `nextprime(2025):` 2025보다 크거나 같은 소수
%[text] - `primes(2025)`: 2025보다 작거나 같은 모든 소수 \
%%
%[text] ### 연습 문제
%[text] Q1. 2000년과 3000년 사이의 연도 가운데 소수인 연도의 갯수를 구하시오.
n = length( primes(3000)) %[output:5a3c062c]
n2 = length( primes(2025)) %[output:1d575aee]
y = n - n2 %[output:7c519ca6]
%%
%[text] Q2. 2026년 이후 100번째로 소수인 해는 몇년도인가요?
nthprime(length(primes(2025))+100) %[output:9b2f428a]
%%
%[text] Q3. 2000~3000사이의 정수에 대하여 서로 다른 소인수의 갯수를 `stem()` 그래프로 나타내시오. 

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"inline","rightPanelPercent":40}
%---
%[output:4c21bb62]
%   data: {"dataType":"matrix","outputData":{"columns":4,"name":"k","rows":1,"type":"double","value":[["2","2","2","3"]]}}
%---
%[output:954526b6]
%   data: {"dataType":"matrix","outputData":{"columns":2,"name":"kUnique","rows":1,"type":"double","value":[["2","3"]]}}
%---
%[output:04e96170]
%   data: {"dataType":"textualVariable","outputData":{"name":"p","value":"24"}}
%---
%[output:069733a2]
%   data: {"dataType":"matrix","outputData":{"columns":8,"name":"d","rows":1,"type":"double","value":[["1","2","3","4","6","8","12","24"]]}}
%---
%[output:434d3889]
%   data: {"dataType":"matrix","outputData":{"columns":8,"name":"q","rows":1,"type":"double","value":[["24","12","8","6","4","3","2","1"]]}}
%---
%[output:5b0d1cc6]
%   data: {"dataType":"matrix","outputData":{"columns":8,"name":"r","rows":1,"type":"double","value":[["0","0","0","0","0","0","0","0"]]}}
%---
%[output:39df360d]
%   data: {"dataType":"text","outputData":{"text":"24 =  1 x 24 + 0\n24 =  2 x 12 + 0\n24 =  3 x  8 + 0\n24 =  4 x  6 + 0\n24 =  6 x  4 + 0\n24 =  8 x  3 + 0\n24 = 12 x  2 + 0\n24 = 24 x  1 + 0\n","truncated":false}}
%---
%[output:5fc3589f]
%   data: {"dataType":"matrix","outputData":{"columns":8,"name":"a","rows":1,"type":"double","value":[["1","2","3","4","6","8","12","24"]]}}
%---
%[output:2fd4c22a]
%   data: {"dataType":"matrix","outputData":{"columns":12,"name":"b","rows":1,"type":"double","value":[["1","2","3","4","5","6","10","12","15","20","30","60"]]}}
%---
%[output:8fb98732]
%   data: {"dataType":"matrix","outputData":{"columns":20,"name":"c1","rows":1,"type":"double","value":[["1","2","3","4","6","8","12","24","1","2","3","4","5","6","10","12","15","20","30","60"]]}}
%---
%[output:7db17682]
%   data: {"dataType":"matrix","outputData":{"columns":14,"name":"c","rows":1,"type":"double","value":[["1","2","3","4","5","6","8","10","12","15","20","24","30","60"]]}}
%---
%[output:6693800a]
%   data: {"dataType":"matrix","outputData":{"columns":14,"name":"ans","rows":1,"type":"double","value":[["1","2","3","4","5","6","8","10","12","15","20","24","30","60"]]}}
%---
%[output:1e82d21f]
%   data: {"dataType":"textualVariable","outputData":{"name":"nDivisors","value":"14"}}
%---
%[output:8628ecd1]
%   data: {"dataType":"matrix","outputData":{"columns":6,"name":"v","rows":1,"type":"double","value":[["1","2","3","4","6","12"]]}}
%---
%[output:6acd347e]
%   data: {"dataType":"textualVariable","outputData":{"name":"ans","value":"12"}}
%---
%[output:586654c1]
%   data: {"dataType":"textualVariable","outputData":{"name":"ans","value":"120"}}
%---
%[output:4d65e2cd]
%   data: {"dataType":"textualVariable","outputData":{"header":"logical","name":"ans","value":"   1"}}
%---
%[output:78445895]
%   data: {"dataType":"textualVariable","outputData":{"header":"logical","name":"ans","value":"   0"}}
%---
%[output:3adc6fe5]
%   data: {"dataType":"matrix","outputData":{"columns":14,"name":"ans","rows":2,"type":"double","value":[["2","3","4","5","6","7","8","9","10","11","12","13","14","15"],["1","1","0","1","0","1","0","0","0","1","0","1","0","0"]]}}
%---
%[output:6d86bc98]
%   data: {"dataType":"matrix","outputData":{"columns":4,"name":"ans","rows":1,"type":"double","value":[["2","3","5","7"]]}}
%---
%[output:2cd20205]
%   data: {"dataType":"textualVariable","outputData":{"name":"ans","value":"2027"}}
%---
%[output:5a3c062c]
%   data: {"dataType":"textualVariable","outputData":{"name":"n","value":"430"}}
%---
%[output:1d575aee]
%   data: {"dataType":"textualVariable","outputData":{"name":"n2","value":"306"}}
%---
%[output:7c519ca6]
%   data: {"dataType":"textualVariable","outputData":{"name":"y","value":"124"}}
%---
%[output:9b2f428a]
%   data: {"dataType":"textualVariable","outputData":{"name":"ans","value":"2791"}}
%---
