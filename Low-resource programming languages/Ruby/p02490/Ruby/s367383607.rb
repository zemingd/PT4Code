while true
  input = gets.split(" ")
  x = input[0].to_i
  y = input[1].to_i
  break if x==0 && y==0
  if x>y
    tmp=x
    x=y
    y=tmp
  end
  puts x.to_s+" "+y.to_s
end