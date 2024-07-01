io = STDIN
n,k=io.gets.split.map(&:to_i)
A=io.gets.split.map(&:to_i)
x = 0
39.downto(0) do |i|  #i bit pos  39,38,...0
  b = 1<<i   #bit pos onの数字を十進数
  next if x + b > k
  x+=b if A.count{|a|a[i]!=0} < n/2.0
end
puts A.inject(0){|s,a|s+=a^x}