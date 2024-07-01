### SNIPPET
  # array = [*1..q].map { |_| gets.split.map(&:to_i) }
  # n = gets.split.map(&:to_i)
  # [].all?(&:even?)
  # a = [*1..m].repeated_combination(n).to_a
  # [1,2,3,4,5].select! { |num| num.even? }  # => [2, 4]
  # 切り捨て: .floor(2).to_f ,切り上げ： .ceil(2).to_f,四捨五入: round(2)
  # 3.upto(6) do |i|, 6.downto(3) do |i|
  # 公約数125.gcd(100)、公倍数125.lcm(100)
  # PI = Math::PI
  # 高さh = a * Math.sin(w / 180.0 * Math::PI)
  # 底辺 = a * Math.cos(w / 180.0 * Math::PI)
  # def chmax(a, b) a > b ? a : b end
  # INF = Float::INFINITY
  # def chmin(a, b) a < b ? a : b end
n = gets.to_i
a = gets.split.map(&:to_i)

a.select! {|num| num.even?}

res = a.all? do |d|
  if d % 3 == 0 || d % 5 == 0
    true
  else
    false
  end
end

puts res ? "APPROVED" : "DENIED"