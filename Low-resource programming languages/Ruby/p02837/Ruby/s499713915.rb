n = gets.to_i
xy = Array.new(n)

n.times do |i|
  a = gets.to_i
  xy[i] = a.times.map { gets.split.map(&:to_i) }
end

ans = 0

(1 << n).times do |bit|
  flag = true
  n.times do |i|
    if bit[i] == 1
      xy[i].each do |x, y|
        flag = false if bit[x-1] != y
      end
    end
  end
  ans = [ans, bit.to_s(2).count("1")].max if flag 
end

puts ans