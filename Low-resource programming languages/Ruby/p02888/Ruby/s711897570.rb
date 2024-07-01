n = gets.to_i
arr = gets.split.map(&:to_i)
arr.sort!

sum = 0

(0...(n - 2)).each do |i|
  a = arr[i]

  ((i + 1)...(n - 1)).each do |j|
    b = arr[j]
    sum += arr[(j + 1)..-1].select{|v| a + b > v }.size
  end
end
puts sum