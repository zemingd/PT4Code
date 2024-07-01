N, M = gets.chomp.split(' ').map(&:to_i)
broken_steps = M.times.map { gets.to_i }

if broken_steps.each_cons(2).map { |a, b| a - b }.any? { |n| n == -1 }
  puts 0
  exit
end

puts 1.upto(N).reduce([1]) { |acc, n|
  a = [n-1, n-2].reject { |n_|
    broken_steps.include?(n) ||
    broken_steps.include?(n_) ||
    n_ < 0
  }
  res = a.map { |i| acc[i] }.reduce(:+) || 0
  acc + [res]
}.last % 1_000_000_007