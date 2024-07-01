a,b  = gets.split(" ").map!{|i| i.to_s}
c = a + b
c = c.to_i
frag = 'No'
1.upto(1000) do |i|
  if i*i == c
    frag = 'Yes'
    break
  end
end
puts frag
