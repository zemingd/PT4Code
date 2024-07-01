# https://atcoder.jp/contests/abc128/tasks/abc128_b

Res = Struct.new(:no, :city, :score)

N = gets.to_i
Rs = []
1.upto(N) do |i|
  s1, s2 = gets.chomp.split
  Rs.push(Res.new(i, s1, s2.to_i))
end

Rs.sort_by { |r| [r.city, -r.score] }.each { |r| puts r.no }
