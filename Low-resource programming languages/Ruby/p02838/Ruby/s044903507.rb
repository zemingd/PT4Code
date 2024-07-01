diver = 10 ** 9 + 7

n = gets.chomp.to_i
sum = 0
a = []
count = 0
gets.chomp.split(' ').each{|ii|
  i = ii.to_i
  a.each{|j|
    sum += i ^ j
  }
  a[count] = i
  count += 1
}

if sum > diver
  puts sum % diver
else
  puts sum
end
