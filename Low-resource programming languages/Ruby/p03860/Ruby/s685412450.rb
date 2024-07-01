def test(a,b,x)
  if a != 0
    puts b/x - (a-1)/x
    return
  end
  puts b/x + 1
end
input = gets
a,b,x = input.split(' ').map{|n|n.to_i}
test(a,b,x)
