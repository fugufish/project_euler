% Find the sum of all the multiples of 3 or 5 below 1000.
-module(problem_one).
-export([calculate/1]).

calculate(Number) -> lists:sum(lists:filter(fun(X) -> (X rem 3 == 0) orelse (X rem 5 == 0) end, lists:seq(1, (Number - 1)))).