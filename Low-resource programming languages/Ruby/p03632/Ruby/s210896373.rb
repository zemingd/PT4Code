# かぶっている時間を求める
# a<=cとするとd<bのときとc<b<dのときとb<c<dのときがある
a, b, c, d = gets.chomp.split.map(&:to_i)
a, c = [a, c].minmax
b, d = [b, d].minmax
if d<=b
  puts d-c
elsif c<=b && b<=d
  puts b-c
elsif b<=c && c<=d
  puts 0
end
