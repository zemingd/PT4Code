loop{
  a,b,c=STDIN.gets.split
  a=a.to_i
  c=c.to_i
  
  case b
  when '+' then
    puts a+c
  when '-' then
    puts a-c
  when '*' then
    puts a*c
  when '/' then
    puts a/c
  else
    break
  end
}