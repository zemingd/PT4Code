s = STDIN.gets.split
stack = Array.new(100)
sp=0
for x in s do
  if x == "+" then
    stack[sp-2]=stack[sp-1]+stack[sp-2]
    sp -= 1
  elsif x == "-" then
    stack[sp-2]=stack[sp-2]-stack[sp-1]
    sp -= 1
  elsif x == "*" then
    stack[sp-2]=stack[sp-1]*stack[sp-2]
    sp -= 1
  else
    stack[sp]=x.to_i
    sp += 1
  end

  #0.upto(sp-1) {|i| printf("%d|", stack[i])}
  #printf("\n")

end
puts stack[0]