But just before that, we should verify, static typing really work as expected:

> f :: Num a => a -> a -> a
> f x y = x*x + y*y
>
> main = print (f 3 2.4)

It works, because, `3` is a valid reprensation for both Frational numbers like Float and for Integer. As `2.4` is a Fractional number, `3` is then interpreted as being also a Fractional number.

