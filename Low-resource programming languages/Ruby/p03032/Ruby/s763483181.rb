n,k = gets.split.map(&:to_i)
v = gets.split.map(&:to_i)

ans = -10000

for i in 0..k
  for j in 0..i
    if n-1-i >= 0
      left = v[j..(n-1-i+j)]
      #p "#{j} ~ #{(n-1-i+j)}"
    else
      left = []
    end
    
    get = v - left
    #p "残り操作回数:#{k-i}"
    (k-i).times do
      break if get.empty?  
      get.delete(get.min) if !get.min.nil? && get.min < 0
    end
    #p "get:#{get}"
    ans = [ans, get.inject(&:+) ? get.inject(&:+) : 0].max
  end
end

puts ans