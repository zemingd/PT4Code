diver = 10 ** 9 + 7

n = gets.chomp.to_i
sum = 0
a = []
gets.chomp.split(' ').map{|ii|
  i = ii.to_i
  a.each{|j|
    sum += i ^ j
  }
  a.push(i)
}

if sum > diver
  puts sum % diver
else
  puts sum
end
