def dice(n, k ,numbers)
  expects = []
  count = 0
  max = 0
  
  while count <= n - k do
    sum = numbers[0..k-1].inject(:+)
    if sum > max
      max = sum
      numbers_a = numbers[0..k-1]
    end
    numbers.shift
    count = count + 1
  end
  numbers_a.each do |num|
    expects.push((1 + num)/2.to_f)
  end
  
  puts expects.inject(:+)
end

n, k = gets.chomp.split(" ").map(&:to_i)
numbers = gets.chomp.split(" ").map(&:to_i)
dice(n, k ,numbers)