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
  # INF = Float::INFINITY
  # def chmin(a, b) a < b ? a : b end

card = []
3.times {card << gets.split.map(&:to_i)}

n = gets.to_i
hits = []
n.times {hits << gets.to_i}


hits.each do |h|
  3.times do |i|
    3.times do |j|
      if h == card[i][j]
        card[i][j] = 0
      end
    end
  end
end

flag = false
tcard = card.transpose
3.times do |k|
  if card[k].sum == 0 || tcard[k].sum == 0
    flag = true
  end
end

if card[0][0] == 0 && card[1][1] == 0 && card[2][2] == 0
  flag = true
end

if card[0][2] == 0 && card[1][1] == 0 && card[2][0] == 0
  flag = true
end

# puts flag ? "Yes" : "No"
if flag
  puts "Yes"
else
  puts "No"
end
