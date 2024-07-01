n = gets.to_i
as = gets.split.map(&:to_i).sort!

ans = 0

if as.uniq.count == 1
  puts 0
  exit 0
end

as.each do |a|
  divisible = false

  (n - 1).downto(0) do |i|
    next if a <= as[i]
    if a % as[i] == 0
      divisible = true
      break
    end
  end

  ans += 1 unless divisible
end

puts ans
