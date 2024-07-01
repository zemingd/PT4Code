# https://atcoder.jp/contests/abc173/tasks/abc173_b

N = gets.to_i
Ss = Array.new(N) { gets.chomp }
h = Ss.group_by(&:itself)
%w[AC WA TLE RE].each do |k|
  v = h[k]&.size || 0
  puts "#{k} x #{v}"
end
