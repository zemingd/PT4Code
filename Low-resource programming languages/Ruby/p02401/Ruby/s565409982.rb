while 1 do
    a,op,b = gets.chomp.split
    a = a.to_i
    b = b.to_i
case op
when '+' then
    puts a+b
when '-' then
    puts a-b
when '*' then
    puts a*b
when '/'
    puts a/b
when '?'
    break;
end
en