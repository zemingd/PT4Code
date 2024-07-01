n = gets.to_i
arr = gets.chomp.split.map(&:to_i)
sum = 1
max = arr[0]
arr[1..-1].each{|x|
    sum += 1 if x >= max
    max = x if max < x
}
puts sum
