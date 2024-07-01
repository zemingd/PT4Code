loop{
  case 
a, op, b = STDIN.gets.split(' ')
a = a.to_i
b = b.to_i
  case op
  when '+' then
    puts a+b
  when '-' then
    puts a-b
  when '/' then
    puts a/b
  when '%' then
    puts a%b
  when '*' then
    puts a*b
  else
    break
  end
}