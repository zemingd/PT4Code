w,h,n = gets.chomp.split(' ').map(&:to_i)
i = 0
hash = {1=>0, 2=>w, 3=>0, 4=>h}
# p hash
while i < n
  x,y,a = gets.chomp.split(' ').map(&:to_i)
  case a
  when 1
    if hash[a] < x # 存在し、xが大きい場合
      hash[a] = x
    end
  when 2
    if hash[a] > x # 存在し、xが大きい場合
      hash[a] = x
    end
  when 3
    if hash[a] < y # 存在し、yが大きい場合
      hash[a] = y
    end
  when 4
    if hash[a] > y # 存在し、yが大きい場合
      hash[a] = y
    end
  end
  i += 1
end

# p hash
# 縦 * 横
s = ((h-hash[3]) - (h-hash[4])) * ((h-hash[1]) - (h-hash[2])) >= 0 ? 
((h-hash[3]) - (h-hash[4])) * ((h-hash[1]) - (h-hash[2])) : 0
p s