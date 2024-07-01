def test(a,b,x)
  if a != 0
    p b/x - (a-1)/x
    return
  end
  p b/x + 1
end
input = gets
a,b,x = input.split(' ').map{|a|a.to_i}
test(a,b,x)
                                             