loop{
  case 
a, op, b = STDIN.gets.split(' ')
a = a.to_i
b = b.to_i
  case op
  when + then
    c=a+b
    puts c
  when - then
    c=a-b
    puts c
  when / then
    c=a/b
    puts c
  when % then
    c=a%b
    puts c
  when * then
    c=a*b
    puts c
  else
    break
  end
}