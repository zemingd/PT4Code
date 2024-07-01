n = gets.to_i

counts = Array.new(n + 1)
counts[0] = 0
counts[1] = 1
available = [1]
max_six = 1
max_nine = 1
(1..n).each do |num|
  new_six = max_six * 6
  if new_six <= num
    available << new_six
    max_six = new_six
  end

  new_nine = max_nine * 9
  if new_nine <= num
    available << new_nine
    max_nine = new_nine
  end

  counts[num] = available.map { |a| counts[num - a] }.min + 1
end

puts counts[n]