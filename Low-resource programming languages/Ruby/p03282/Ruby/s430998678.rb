s = gets.chomp.to_s.split(//)
n = gets.chomp.to_i
i = 0

s.each do |j|
  if s == 1
    i += 1
  else
    break
  end
end

puts i <= n ? 1: s[i]