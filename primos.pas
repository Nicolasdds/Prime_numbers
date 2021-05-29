Program primos;
Uses crt;
Var
    n, contador, i, q : integer;
    divisor : boolean;
Begin
    Clrscr;
    q := 1; 
    while q = 1 do
        Begin
            write('Ingrese un numero natural: ');
            read(n);
            contador := 0;
            for i := 1 to (n div 2) do
                Begin
                    divisor := (n mod i) = 0;
                    if divisor then
                        begin
                            write(i, ' ');
                            contador := contador + 1
                        End;
                End;
            writeln(n);
            if contador <= 1 then
                writeln('El numero ingresado es primo.')
            else
                writeln('El numero ingresado tiene: ', (contador + 1), ' divisores.');
            writeln;
            writeln('Desea ingresar otro numero? ');
            writeln('1: Si.');
            writeln('0: No.');
            readln(q);
            writeln();
       End;
End.

