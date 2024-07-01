str = gets
ary = []
  for i in 0..(str.length-1)
    ary.unshift(str[i])
  end
puts ary.join