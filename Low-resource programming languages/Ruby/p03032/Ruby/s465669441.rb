n,k = gets.split.map(&:to_i)
v = gets.split.map(&:to_i)

total = v.inject(&:+)
ans = -10000

for i in 0..k
  for j in 0..i
    left = v[j..(n-1-i+j)]
    
    #p "#{j} ~ #{(n-1-i+j)}"
    get = v - left
    #p "残り操作回数:#{k-i}"
    (k-i).times do
      break if get.empty?  
      get.delete(get.min) if get.min < 0
    end
    ans = [ans, get.inject(&:+) ? get.inject(&:+) : 0].max
  end
end

puts ans