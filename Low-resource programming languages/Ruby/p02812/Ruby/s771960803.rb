program ABC150B;
var
n,c,i:integer;
s:string;
begin
readln(n);
readln(s);
c:=0;
for i:=3 to n do
if(S[i-2]='A')and(S[i-1]='B')and(S[i]='C')then inc(c);
writeln(c);
end.