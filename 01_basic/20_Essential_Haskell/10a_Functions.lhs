### Useful notations for functions

Just a reminder:

~~~
x :: Int            ⇔ x is of type Int
x :: a              ⇔ x can be of any type
x :: Num a => a     ⇔ x can be any type a
                      such that a belongs to Num type class 
f :: a -> b         ⇔ f is a function from a to b
f :: a -> b -> c    ⇔ f is a function from a to (b→c)
f :: (a -> b) -> c  ⇔ f is a function from (a→b) to c
~~~

Defining the type of a function before its declaration isn't mandatory.
Haskell infers the most general type for you.
But it is considered a good practice to do so.

_Infix notation_

> square :: Num a => a -> a  
> square x = x^2

Note `^` use infix notation. 
For each infix operator there its associated prefix notation.
You just have to put it inside parathesis.

> square' x = (^) x 2
> 
> square'' x = (^2) x

We can remove `x` in the left and right side!
It's called currying.

> square''' = (^2)

Note we can declare function with `'` in their name.
Here:

 > `square` ⇔  `square'` ⇔ `square''` ⇔ `square '''`

_Tests_

An implementation of the absolute function.

> abs x :: Num a => a -> a
> abs = if x >= 0 then x else -x

Note: the `if .. then .. else` Haskell notation is more like the
`¤?¤:¤` C operator. You cannot forget the `else`.

Another equivalent version:

> abs' x
>      | x >= 0 = x
>      | otherwise = -x

 > Notation warning: indentation is _important_ in Haskell.
 > Like in Python, a bad indendation could break your code!
