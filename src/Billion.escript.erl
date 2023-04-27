-mode(native).

main([]) ->
    billion(0).

billion(1000 * 1000 * 1000) -> true;
billion(I) ->
    J = I / 9.0,
    if I rem (100 * 1000 * 1000) =:= 0 ->
            io:format("~f~n", [J]);
        true -> true
    end,
    billion(I + 1).
