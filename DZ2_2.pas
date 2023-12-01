
var
  a: string;
  k, s, p, z: int64;
  f: Boolean;

begin
  writeln('Введите строку');
  readln(a);
  z := 0; s := length(a); 
  for k := 0 to s - 3 do
  begin
    p := 0;
    f := false;
    while p < s - 3 do
    begin
      if (k + 1 = p + 1) and (k + 2 = p + 2) and (k + 3 = p + 3) then 
        p := p + 1;
      if (a[s - 2] = a[k + 1]) and (a[s - 1] = a[k + 2]) 
            and (a[s] = a[k + 3]) and (k + 1 <> s - 2) and (k + 2 <> s - 1) and (k + 3 <> s) then
        f := true;
      if (a[k + 1] = a[p + 1]) and (a[k + 2] = a[p + 2]) and (a[k + 3] = a[p + 3]) then
        f := true;
      p := p + 1;
    end;
    if f = false then 
      z := z + 1;
  end;
  write('Количество уникальных подстрок из трёх символов: ', z)
end.