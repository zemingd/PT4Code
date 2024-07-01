n = gets.to_i
a = gets.split.map(&:to_i)
ns = Hash.new(0)
a.each{|an| ns[an] += 1}
flag = 1
ns.each do |k, v|
  if v != 1
    flag = 0
    break
  end
end
(flag == 1) ? (puts "YES"):(puts "NO")