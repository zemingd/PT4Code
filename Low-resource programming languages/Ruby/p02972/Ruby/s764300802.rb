n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)
wa = Array.new(n,0)
ans = []
n.downto(1) do |i|
  if a[i-1] != wa[i-1]
    ans.push(i)
    wa[0] += 1
    wa[0] %= 2
    x = i
    while x % 2 == 0 && x / 2 > 1
      x = x / 2
      wa[x-1] += 1
      wa[x-1] %= 2
    end
  end
end
puts ans.length
ans.reverse.each do |x|
  print "#{x} "
end