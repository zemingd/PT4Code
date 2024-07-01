a=?3,?5,?7
n=gets.to_i
p (0..8).map{|i|a.product(*[a]*i).map{|s|s.join}}.flatten.select{|s|s[?3]&&s[?5]&&s[?7]}.map(&:to_i).count{|x|x<=n}