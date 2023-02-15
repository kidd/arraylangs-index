# FizzBuzz


```ngnk
\cd notebooks
```

    'io
    


# Interleave

FizzBuzz


```ngnk
" "/$x^'``fizz`buzz`fizzbuzz@2/~|3 5!\:x:1+!50 
```

    "1 2 fizz 4 buzz fizz 7 8 fizz buzz 11 fizz 13 14 fizzbuzz 16 17 fizz 19 buzz fizz 22 23 fizz buzz 26 fizz 28 29 fizzbuzz 31 32 fizz 34 buzz fizz 37 38 fizz buzz 41 fizz 43 44 fizzbuzz 46 47 fizz 49 buzz"


Classic FizzBuzz. You know the drill.

I've seen a few `k` implementations of fizzbuzz, but the one I like the most is this one.


```ngnk
1+!50   / int
```

    1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50



```ngnk
3 5!\:1+!50 / x mod 3 , x mod 5 for each x
```

    (1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2
     1 2 3 4 0 1 2 3 4 0 1 2 3 4 0 1 2 3 4 0 1 2 3 4 0 1 2 3 4 0 1 2 3 4 0 1 2 3 4 0 1 2 3 4 0 1 2 3 4 0)



```ngnk
~3 5!\:1+!50 / negate (0->1 , X->0) 
```

    (0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0
     0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1)



```ngnk
2/~3 5!\:1+!50 / encode from base 2
```

    0 0 2 0 1 2 0 0 2 1 0 2 0 0 3 0 0 2 0 1 2 0 0 2 1 0 2 0 0 3 0 0 2 0 1 2 0 0 2 1 0 2 0 0 3 0 0 2 0 1



```ngnk
``fizz`buzz`fizzbuzz@2/~3 5!\:x:1+!50 / pick from a list of 4 elements, 0 is an empty symbol, 1 is `fizz, 2 is `buzz, 3 is `fizzbuzz
```

    ```buzz``fizz`buzz```buzz`fizz``buzz```fizzbuzz```buzz``fizz`buzz```buzz`fizz``buzz```fizzbuzz```buzz``fizz`buzz```buzz`fizz``buzz```fizzbuzz```buzz``fizz



```ngnk
x^'``fizz`buzz`fizzbuzz@2/~3 5!\:x:1+!50 / replace nils by the original number. `'` each works by calling `^` with each integer paired with the (maybe null) symbol 
```

    (1
     2
     `buzz
     4
     `fizz
     `buzz
     7
     8
     `buzz
     `fizz
     11
     `buzz
     13
     14
     `fizzbuzz
     16
     17
     `buzz
     19
     `fizz
     `buzz
     22
     23
     `buzz
     `fizz
     26
     `buzz
     28
     29
     `fizzbuzz
     31
     32
     `buzz
     34
     `fizz
     `buzz
     37
     38
     `buzz
     `fizz
     41
     `buzz
     43
     44
     `fizzbuzz
     46
     47
     `buzz
     49
     `fizz)



```ngnk
" "/$x^'``fizz`buzz`fizzbuzz@2/~3 5!\:x:1+!50 / stringify the result by converting everything to strings, and joining by spaces
```

    "1 2 buzz 4 fizz buzz 7 8 buzz fizz 11 buzz 13 14 fizzbuzz 16 17 buzz 19 fizz buzz 22 23 buzz fizz 26 buzz 28 29 fizzbuzz 31 32 buzz 34 fizz buzz 37 38 buzz fizz 41 buzz 43 44 fizzbuzz 46 47 buzz 49 fizz"


Wait, are fizzes and buzzes mixed?, let's reverse (could be done swapping 3 and 5 themeslves, or ``` `fizz`buzz```, but well...


```ngnk
" "/$x^'``fizz`buzz`fizzbuzz@2/~|3 5!\:x:1+!50 
```

    "1 2 fizz 4 buzz fizz 7 8 fizz buzz 11 fizz 13 14 fizzbuzz 16 17 fizz 19 buzz fizz 22 23 fizz buzz 26 fizz 28 29 fizzbuzz 31 32 fizz 34 buzz fizz 37 38 fizz buzz 41 fizz 43 44 fizzbuzz 46 47 fizz 49 buzz"


solved!
