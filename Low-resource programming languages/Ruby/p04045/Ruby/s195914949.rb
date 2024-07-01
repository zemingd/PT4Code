n, k = gets.chomp.split(" ")
n = n.split("").map(&:to_i)
nn = n.size
k = k.to_i
d = gets.chomp.split(" ").map(&:to_i)
ok = [1,2,3,4,5,6,7,8,9] - d
ret = []
nn.times do |i|
  if d.include?(n[i]) then
    ret << ok.bsearch{|x| x > n[i]}
  else
    ret << n[i]
  end
end
puts ret.join("").to_i
