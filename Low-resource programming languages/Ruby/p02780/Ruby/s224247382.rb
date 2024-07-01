def dice(n, k ,numbers)
  expects = []
  count = 0
  answers = []
  numbers.each do |num|
    expects.push((1 + num)/2.to_f)
  end
  while count <= n - k do
    answers.push(expects[0..k-1].inject(:+))
    expects.shift
    count = count + 1
  end
  puts answers.max
end

n, k = gets.chomp.split(" ").map(&:to_i)
numbers = gets.chomp.split(" ").map(&:to_i)
dice(n, k ,numbers)