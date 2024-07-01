n = gets.to_i
s = (1..n).map{gets.split.map(&:to_i)}
ans = []
101.times{|x|101.times{|y|
    t = s.map{|v| (v[0] - x).abs + (v[1] - y).abs + v[2]}.uniq
    ans = [x, y, t[0]] if t.length == 1
    }}
puts ans[0].to_s + " " + ans[1].to_s + " " + ans[2].to_s
