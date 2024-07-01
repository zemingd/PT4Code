# 入力
n = gets.to_i
a = gets.chomp.split.map(&:to_i)

# 配列から偶数をだす
even = a.select{|x|x%2==0}

# 3と５で割れるかの判定
d = even.each do|i|
 if i%3==0 || i%5==0
   true
 else
   false
 end
end

# こたえ
if d.all? {|v| v == true }
  puts "APPROVED"
else
   puts "DENIED"
end