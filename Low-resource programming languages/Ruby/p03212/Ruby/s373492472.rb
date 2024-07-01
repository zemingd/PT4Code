A , N = %w(7 5 3), gets.to_i
def dfs(v); [v] + A.map{ |a| dfs(v + a) } if v.to_i <= N; end
def all_in?(s); A.select{|v| !s.include?(v)}.length == 0; end
p A.map{|v| dfs(v)}.flatten.compact.select{|v| all_in?(v) }.length