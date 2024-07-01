N = gets.to_i
Ary = gets.split.map(&:to_i)
count = []
RESULT = Array.new(N, 0)
SUM_MEMO = 0
def sum(i)
  result = 0

  (1..(N / (i + 1))).each do |n|
    result += RESULT[(i + 1) * n - 1]
  end

  result
end

(0...N).reverse_each do |i|
  if Ary[i] == 1 && sum(i).even?
    RESULT[i] = 1
    count << i + 1
  elsif Ary[i] == 0 && sum(i).odd?
    RESULT[i] = 1
    count << i + 1
  end
end

puts count.size

if count.size > 0
  puts count.join(' ')
end
