n = gets.chomp.to_i
array = gets.split.map(&:to_i)
array_count = array.count
ans = []
if array.count(0) == array_count
  puts 0
else
  n.times do |i|
    sum = 0
    if array_count >= (n - i) * 2
      sum += 1 if array[(n - i) * 2 - 1] == 1
    end
    num = n / (n - i) / 2
    num.times do |j|
      sum += 1 if ans.include?(n - i + (n - i) * (j + 1) * 2)
    end
    if array[n - i - 1] == 0
      if sum.odd?
        ans << n - i
      end
    else
      if sum.even?
        ans << n - i
      end
    end
  end
  m = ans.count
  puts m.zero? ? -1 : m
  unless m.zero?
    puts ans.join(" ")
  end
end