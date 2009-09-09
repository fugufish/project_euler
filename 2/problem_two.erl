% Find the sum of all the even-valued terms in the Fibonacci sequence which do not exceed four million.
-module(problem_two).
-export([calculate/1]).

% returns the next number in the sequence for List
next([1]) -> 2;
next(List) -> lists:last(List) + (lists:nth(length(List) - 1, List)).

fib_seq(List, Max) -> fib_seq(lists:flatten([List, next(List)]), next(lists:flatten([List, next(List)])), Max).

fib_seq(List, Next, Max) when Next < Max -> fib_seq(lists:flatten([List, Next]), next(lists:flatten([List, next(List)])), Max);
fib_seq(List, _, _) -> List.

calculate(Max) -> lists:sum(lists:filter(fun(X) -> X rem 2 == 0 end, fib_seq([1], Max))).
