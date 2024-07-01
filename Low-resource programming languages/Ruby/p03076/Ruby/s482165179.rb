a = gets.chomp
b = gets.chomp
c = gets.chomp
d = gets.chomp
e = gets.chomp

array  = [a, b, c, d, e]
array3 = [a.clone, b.clone, c.clone, d.clone, e.clone]
# 末尾の値がすくない順に並び替える0123...9
array2 = []
array.each do |n|
  array2 << if n[-1] == "0"
              n.to_i
            else
              n[-1] = "0"
              n.to_i + 10
            end
end

number = 0

break_flg = false
(1..9).each do |n|
  array3.each do |k|
    if k[-1] == n.to_s
      number    = n
      break_flg = true
    end
    break if break_flg
  end
  break if break_flg
end

if number.zero?
  p array2.inject(:+)
else
  p array2.inject(:+) - 10 + number
end
