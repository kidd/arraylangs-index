# AOC 2022


```ngnk
\cd notebooks
```

    'io


# Interleave

https://codegolf.stackexchange.com/questions/102496/interleave-strings/251308#251308


```ngnk
f:<!/,/'(!#:)'\
t:("abcd";"ABCD" ; "1234")
f t
```

    "aA1bB2cC3dD4"


The whole "sentence" is:
Associate each string with a `int` list of the same size (`iota` in apl) and later, sort the chars by the numbers we associated.

This makes all first letters go together, followed by the seconds ...
In apl, it's very similar to perfect shuffle https://www.jsoftware.com/papers/50/  & http://www.math.bas.bg/bantchev/place/apl.html .

In this implementation, we use a train to emulate a fork (tacitjk).

- `\` Is used to keep the original table and associate the result of the train.
- For each one of the strings `'` create a list of `Int`s of the same size as the string. `(!#:)`. Remember we use `:` to force the monadic version of `#`.


```ngnk
 (!#:)'\ t
```

    (("abcd";"ABCD";"1234")
     (0 1 2 3;0 1 2 3;0 1 2 3))


Next thing, for each of the two top level elements, concatenate the elements inside. We achieve this with `,/`.


```ngnk
,/'(!#:)'\ t
```

    ("abcdABCD1234"
     0 1 2 3 0 1 2 3 0 1 2 3)


Then, create a dictionary using the first element as keys and the second as values. There's another nice use of `/`, where, if the list we're reducing over has only 2 elements, `f/a1 a2` is the same as `a1 f a2`


```ngnk
!/,/'(!#:)'\ t
```

    "abcdABCD1234"!0 1 2 3 0 1 2 3 0 1 2 3


Weird, that in K, building a dictionary doesn't make the keys unique, so it's not really a dictionary, but a table, sort of.

Anyway, last step:
grade ascending. The return value is the keys, sorted by the values.


```ngnk
<!/,/'(!#:)'\ t
```

    "aA1bB2cC3dD4"
