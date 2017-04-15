# 2017-03-20

## Abstractions

We're in the business of abstractions

"squeezable honking red ball nose adornment" => "clown nose"

Functional languages separate data types from behaviors

Polymorphism - associating an operation name with more than one algorithm.

Pattern matching is basic polymorphism

    def add(:one, n), do: n + 1
    def add(:two, n), do: n + 2

By defining a protocol, you're defining an abstraction

    to_string("Hello World")
    "Hello World"

    to_string(123)
    "123"

    to_string(99.9)
    "99.9"

## Expression problem

http://stackoverflow.com/questions/4509782/simple-explanation-of-clojure-protocols

http://www.ibm.com/developerworks/library/j-clojure-protocols/
