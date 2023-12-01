var i,n,sum :int64;
    sred: real;
    a:array of int64;
begin
  begin
  readln(n);
  SetLength(a, n);
  writeln(length(a));
end;
begin
  writeln('Введите эл-ты массива: ');
  for i:= 0 to n-1 do 
  begin
    readln(a[i]);
    sum:=sum+a[i];
  end;
  writeln(a);
  sred:=sum/n;
  writeln(sred);
end;
end.