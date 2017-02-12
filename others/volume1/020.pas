var
  n, max, l, h, l0, h0: smallint;
  a: array of int64;

begin
  readln(n);
  setlength(a, n + 1);
  for l := 0 to n - 1 do
    read(a[l]);
  a[n] := 0;
  max := 0;
  l0 := 0;
  h0 := 0;
  l := 0;
  while l < n do
    for h := l to n - 1 do
      if a[h] * a[h + 1] >= 0 then
        begin
          if max < h - l then
            begin
              max := h - l;
              l0 := l;
              h0 := h
            end;
          l := h + 1;
          break
        end;

  writeln(l0 + 1, ' ', h0 + 1)
end.
