n = gets.chomp.to_i
ps = gets.chomp.split(" ").map(&:to_i)

ans = 0

(1..n - 2).each do |index|
  if ps[index].between?(ps[index - 1], ps[index + 1])
    ans += 1
  elsif ps[index].between?(ps[index + 1], ps[index - 1])
    ans += 1
  end
end

puts ans