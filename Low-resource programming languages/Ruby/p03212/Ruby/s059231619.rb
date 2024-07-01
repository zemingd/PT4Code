A,N=%w(7 5 3),gets.to_i
def dfs(v); [v]+A.map{|a|dfs v+a} if v.to_i<=N; end
p A.map{|v|dfs v}.flatten.compact.select{|v| v[?3]&&v[?5]&&v[?7]}.length