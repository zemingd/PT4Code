S = gets.split("")
K = gets.chomp.to_i

# 5000兆 = 10の15乗 * 5
# AAA = 5000000000000000

# 2
# 1日後 22
# 2日後 2222
# 3日後 22222222
# 10日後　2222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222

one_count = 0
S.each do |ss|
  break unless ss == "1"
  one_count += 1
end

if S.count == S.count("1") || one_count >= K
  puts "1"
else
  v = S.select { |v| v != "1" }.first
  puts v
end