n = gets.chomp.to_i
s = gets.chomp

tmp_i = 0
count = 0
# 右からみて最初に出てくる.を見つける, それ以降を全部#にする
n.times do |i|
  if s[s.length - i - 1] == "." then
    if s[0..(s.length-i-1)].count("#") == 0 then
      puts 0
      exit 0
    end
    count = 1
    tmp_i = i
    break
  end
end

# 右からみて最初に出てくる.を見つける, それ以前を全部.にする
n.times do |i|
  next if i <= tmp_i
  if s[s.length - i - 1] == "." then
    count += s[0..(s.length-i-1)].count("#")
    break
  end
end

puts count
