N, M = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)

is_ok = as.map do |a|
  ret = 0
  n = a
  while n % 2 == 0
    n = n / 2
    ret += 1
  end
  ret
end.uniq.size == 1

if !is_ok
  puts 0
  exit 0
end

lcm = as.map { |a| a / 2 }.reduce { |acc, a| acc.lcm(a) }
puts (M + lcm) / (lcm * 2)