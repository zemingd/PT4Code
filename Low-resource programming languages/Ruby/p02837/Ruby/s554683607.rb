n = gets.to_s.to_i

s = Array.new(n){ Array.new(n){ nil } }

n.times do |i|
  
  a = gets.to_s.to_i
  a.times do
    x, y = gets.to_s.split.map{|t|t.to_i}
    x -= 1
    s[i][x] = y
  end
end

ans = 0
(2**n).times do |bit|
  
  cnt = 0
  flag = true
  n.times do |i|
    
    next if bit[i] == 0
    cnt += 1
    s[i].each_with_index do |y, j|
      
      next unless y
      if y != bit[j]
        flag = false
        break
      end
    end
  end
  
  ans = [ans, cnt].max if flag
end

puts ans