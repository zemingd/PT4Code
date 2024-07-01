n,k = gets.chomp.split.map(&:to_i)
ds = gets.chomp.split.map(&:to_i)
ns = n.to_s.chars.map(&:to_i)
ans = 0
n.upto(10*n) do |num|
  flag = false
  ns.each do |_n|
    if !ds.include?(_n)
      ans = num
      flag = true
    end
  end
  break p ans if flag
end
