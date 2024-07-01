def dice(n, k ,numbers)
  count = 0
  max = 0
  expects = 0
  sum = numbers[0..k-1].inject(:+)
  numbers_a = numbers[0..k - 1]
  
  while count < n - k do
    sum = sum + numbers[k + count] - numbers[count]
    if sum > max
      max = sum
      numbers_a = numbers[count + 1..count + k]
    end
    count = count + 1
    
  end
  numbers_a.each do |num|
    expects += ((1 + num)/2.to_f)
  end
  puts expects
end

n, k = gets.chomp.split(" ").map(&:to_i)
numbers = gets.chomp.split(" ").map(&:to_i)
dice(n, k ,numbers)