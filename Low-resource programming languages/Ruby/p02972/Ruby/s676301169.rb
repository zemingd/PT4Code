n = gets.chomp.to_i
array = gets.split.map(&:to_i)
ans = []
if array.count(0) == array.count
  puts 0
else
  n.times do |i|
    num = n / (n - i)
    sum = 0
    num.times do |j|
      sum += 1 if ans.include?((n - i) * (j + 2))
    end
    if array[n - i - 1] == 0
      if sum.odd?
        ans << (n - i)
      end
    else
      if sum.even?
        ans << (n - i)
      end
    end
  end
  m = ans.count
  puts m.zero? ? -1 : m
  puts ans.join(" ")
end