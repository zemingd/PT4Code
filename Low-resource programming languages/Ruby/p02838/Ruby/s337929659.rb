n = gets.chomp.to_i
ary1 = gets.chomp.split(" ").map(&:to_i)


result = 0
(0..59).each{|elem|
  count = 0
  ary1.each{|elem1|
    count += 1 if elem1[elem] == 1 
  }
  result += count * (n-count) * (2**elem)
  result = result %  (10**9+7)
  }

puts result

