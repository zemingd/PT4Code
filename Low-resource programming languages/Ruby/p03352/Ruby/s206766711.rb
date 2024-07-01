x = gets.to_i
pows = [] # 1000以下のべき乗数の集合
pows << 1

(2..31).each do |n|
  p = 2
  while n ** p < 1000
    pows << n ** p
    p += 1
  end
end

ans = pows.delete_if {|n| n > x}

puts ans.max