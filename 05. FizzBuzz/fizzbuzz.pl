divisible(Dividend, Divisor) :- mod(Dividend, Divisor) =:= 0.

fizz_buzz(Number, "FizzBuzz") :- divisible(Number, 3), divisible(Number, 5).
fizz_buzz(Number, "Fizz") :- divisible(Number, 3).
fizz_buzz(Number, "Buzz") :- divisible(Number, 5).
fizz_buzz(Number, Number).

main(N) :- main(0, N).
main(Max, Max).
main(I, Max) :- Next is I + 1, fizz_buzz(Next, Str), write(Str), nl, main(Next, Max).

:- initialization
    main(100),
    halt.