N=gets.to_i
def f(v);v.to_i<=N ? [v]+%w(7 5 3).map{|a|f v+a}:[];end
p f(?0).flatten.select{|v| v[?3]&&v[?5]&&v[?7]}.length