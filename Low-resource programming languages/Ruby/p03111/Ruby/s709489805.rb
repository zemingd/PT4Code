N, A, B, C = gets.chomp.split.map(&:to_i)
ABC = [A, B, C]
bs = readlines.map(&:to_i)

def calc_cost(total, bs)
  (bs.length - 1) * 10 + (total - bs.reduce(&:+)).abs
end

min = 100000
(0..(4**N-1)).each do |i|
  tmp_is = i.to_s(4).split('').map(&:to_i)
  is = [0] * (N - tmp_is.length) + tmp_is
  bis = bs.zip(is)
  cost = 0
  (0..2).each do |j|
    j_bs = bis.find_all{|b, i| i == j}.map{|b, i| b}
    if j_bs.empty? then cost = 1000000; break end
    cost += calc_cost(ABC[j], j_bs)
  end
  if cost < min then min = cost end
end

ans = min
print("#{ans}\n")