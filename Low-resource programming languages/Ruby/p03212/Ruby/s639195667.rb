n = gets.to_i
a = [[3,5,7]]

8.times do |i|
  x = []
  d = a[i].dup
  [3,5,7].each do |j|
    v = j * (10 ** (i+1))
    d.each do |t|
      x << (t + v)
    end
  end
  a << x
end
a.flatten!
ans = 0
a.each do |v|
  str = v.to_s
  check = [false,false,false]
  str.each_char {|c|
    if c == "3"
      check[0] = true
    elsif c == "5"
      check[1] = true
    elsif c == "7"
      check[2] = true
    end
  }
  ans += 1 if  v <= n && check[0] && check[1] && check[2]
end
p ans
