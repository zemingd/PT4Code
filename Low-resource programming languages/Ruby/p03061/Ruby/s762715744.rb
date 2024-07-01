n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

def kouyakusu(lhs, rhs)
  l = [lhs, rhs].max
  s = [lhs, rhs].min
  r = l % s
  return s if r.zero?
  kouyakusu(s, r)
end

result = []
(0...n).each do |i|
  (i+1...n).each do |j|
    ks = kouyakusu(a[i], a[j])
    result << { ks: ks, pair: [i, j] }
  end
end
result.sort_by! { |r| r[:ks] }
f = result.first
cd = result.select { |r| r[:ks] == f[:ks] }
if cd.all? { |c| c[:pair].include?(f[:pair][0]) || c[:pair].include?(f[:pair][1]) }
  s = result.find { |r| r[:ks] > f[:ks] }
  if s
    puts s[:ks]
    exit 0
  end
end
puts f[:ks]
