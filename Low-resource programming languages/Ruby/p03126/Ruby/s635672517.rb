# abc118 B
n, m = gets.split.map(&:to_i)

x = Array.new(m, 0)

n.times do
  _, *aa = gets.split.map(&:to_i)
  aa.each do |a|
    x[a-1] += 1
  end
end

p x.count{|xx|xx == n}
