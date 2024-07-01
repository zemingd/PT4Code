TEST = 0
class Object
  def p(*arg)
    super(*arg) if TEST == 1
  end
end

n,k = gets.chomp.split.map(&:to_i)
h = gets.chomp.split.map(&:to_i)

dp = [0, (h[0] - h[1]).abs]

(2..(n-1)).each do |i|
  mini = 999999999
  (1..k).to_a.each do |j|
    break if i-j<0
    c = dp[i-j] + (h[i-j] - h[i]).abs
    p ['c', c]
    mini = [c, mini].min
  end
  dp[i] = mini
  p ['dp', dp]
end

p dp
puts dp.last