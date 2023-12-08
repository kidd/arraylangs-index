i:0:"./i/1"
last:{*|x}
first:{*x}
/ +/(10/(first;last)@\:(0=)_+/(!10)*"0123456789"=\:)'i /part1

w:" "\"one two three four five six seven eight nine"
f:+/{x:{(x>47)&x<58}#x;.(*x;*|x)}'

f@i
f@{ x{(n;w):y;(w,n,w)/w\x}/($1+!9),','w}'i

/ "123",','"456"
/ "123",',','"123"

/ w{/x\y}\:*1_i
