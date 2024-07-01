n = gets.to_i
s = (1..n).map{gets.split.map(&:to_i)}.select{|v| v[2] != 0}
ans = []
101.times{|x|101.times{|y|
    h = (s[0][0] - x).abs + (s[0][1] - y).abs + s[0][2]
    ans = [x, y, h] if s.select{|v| (v[0] - x).abs + (v[1] - y).abs + v[2] != h}.length == 0
    }}
puts ans[0].to_s + " " + ans[1].to_s + " " + ans[2].to_s