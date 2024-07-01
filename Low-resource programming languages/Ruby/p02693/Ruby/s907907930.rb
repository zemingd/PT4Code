K = gets.to_i
a, b = gets.split.map(&:to_i)
flag = false
a.upto(b) do |n|
  flag = true if n % K == 0
end
flag ? puts('OK') : puts('NG')
