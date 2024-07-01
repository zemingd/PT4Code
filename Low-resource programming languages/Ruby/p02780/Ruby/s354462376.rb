def dice(n, k ,numbers)
  expects = []
  count = 0
  answers = []
  n.times do |i|
    expects[i] = (1 + numbers[i])/2.to_f
  end
  while count <= n - k do
    answers.push(expects[0..k-1].inject(:+))
    expects.shift
    count = count + 1
  end
  answers = answers.sort.reverse
  puts sprintf( "%.12f", answers[0] )
end

n, k = gets.chomp.split(" ").map(&:to_i)
numbers = gets.chomp.split(" ").map(&:to_i)
dice(n, k ,numbers)