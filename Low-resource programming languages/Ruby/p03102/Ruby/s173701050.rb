N,M,C = gets.split("\s").map {|s|s.to_i}
B_list = gets.split("\s").map {|s|s.to_i}
cnt = 0
N.times do
  ans = 0
  a_list = gets.split("\s").map {|s|s.to_i}
  a_list.each_with_index do |a, idx|
    ans += a*B_list[idx]
  end
  ans += C
  if ans > 0 then
    cnt += 1
  end
end
p cnt