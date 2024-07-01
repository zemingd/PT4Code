n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)
sum = 0

a.each{|i|
    sum += b[i-1]
    if a[i-1]+1 == a[i]
      sum += c[a[i-1]-1]
    end
}

puts sum
