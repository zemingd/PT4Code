s = gets.chomp
n = gets.chomp.to_i
n.times{
  t,f,c = gets.chomp.split(" ")
  t = t.to_i;f=f.to_i
  if t == 1
    s = s.reverse
  else
    if f == 1
      s = c + s
    else
      s = s + c
    end
  end
}
puts s