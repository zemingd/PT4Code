N, M = gets.split.map(&:to_i)

as = Hash.new(0)
N.times do |i|
  gets.split.map(&:to_i)[1..-1].each do |a|
    as[a.to_s] += 1
  end
end

ans = 0
as.each do |k ,v|
  ans += 1 if v == N
end
puts ans
