### SNIPPET
  # n = gets.split.map(&:to_i)
  # array = n.times.map { gets.split.map(&:to_i) }
  # [].all?(&:even?)
  # a = [*1..m].repeated_combination(n).to_a
  # [1,2,3,4,5].select { |num| num.even? }  # => [2, 4]
  # ["a","a","b"].group_by(&:itself).map{|k,v| [k, v.count]}.to_h #=> {"a"=>2, "b"=>1}
  # 切り捨て: .floor(2).to_f ,切り上げ： .ceil(2).to_f,四捨五入: round(2)
  # 3.upto(6) do |i|, 6.downto(3) do |i|
  # 公約数125.gcd(100)、公倍数125.lcm(100)
  # PI = Math::PI
  # 高さ = a * Math.sin(w / 180.0 * Math::PI), 底辺 = a * Math.cos(w / 180.0 * Math::PI)
  # def chmax(a, b) a > b ? a : b end
  INF = Float::INFINITY
  # def chmin(a, b) a < b ? a : b end

n,k  = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).reverse

a.each_with_index do |ele,index|
  break if index > (n-k)
  jyou = 1
  k.times do |j|
    jyou *= a[index + j] 
  end
  a[index] = jyou
end

a.reverse!
# back = 1
# k.times do |kl|
#   back *= a[k-(kl+1)]
# end

(k-1).upto(n-1) do |i|
  back = a[i-1]
  jyou = a[i]
  if i == (k-1)
  elsif back < jyou
    puts "Yes"
  else
    puts "No"
  end
end

