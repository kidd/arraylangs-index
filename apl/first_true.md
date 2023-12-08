# First true

I was reading this statistics paper by Linda Alvord: A vision of probability and statistics using APL

The amount of learnings from even the most simple apl line is so amazing it gives me food for thought for a full flight :)

So, here's what I read there:


    If each column is reduced using the function or, a logical vector is produced that has a one in each position where there is a first occurrence of a unique element in the original vector.


So the idea is that

0 1 0 1 1 1 1 0 1 0 1

<\a

will give us a mask with the first 1 to 1 and all the rest to 0.

Let's see how this works:

<\a is going to answer with the result of

</¨{⍵⍴x}¨⍳⍴x←6 7 8
