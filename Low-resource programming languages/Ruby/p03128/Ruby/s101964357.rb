n_hsh = {
  	1 => 2,
  	2 => 5,
  	3 => 5,
    4 => 4,
  	5 => 5,
  	6 => 6,
  	7 => 3,
  	8 => 7,
  	9 => 6
  }

k_hsh = {
  	2 => [1],
  	3 => [7],
  	4 => [4],
  	5 => [2,3,5],
  	6 => [6,9],
  	7 => [8]
  }

n,m=gets.chomp.split(" ").map(&:to_i)
ary=gets.chomp.split(" ").map(&:to_i).sort.reverse

s_nums = ary.sort_by { |a| n_hsh[a] }
u_nums = s_nums.map { |s| n_hsh[s] }
flag = true
s,a = n.divmod(u_nums[0])
ans = []
s.times do |i|
  ans << s_nums[0]
end

if a == 0
  puts ans.join
else
  while a != 0 do
    tmp = ans.shift
    a = n_hsh[tmp] + a
    t_n = u_nums.take_while { |u| u <= a }.uniq
    a = a - t_n[-1]
    ans << s_nums[t_n.size-1]
  end
  puts ans.sort.reverse.join
end