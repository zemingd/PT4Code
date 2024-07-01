n = gets.to_i
a = gets.chomp.split.map(&:to_i)
a.unshift(0)
res = Hash.new(0)

n.step(1, - 1) do |i|
  if i <= n / 2
    t = (1..n).to_a.select {|j| j % i == 0 }.inject(0) {|acc, x| acc + a[x] }
    if t != a[i]
      res = nil
      break
    end
  end

  if a[i] != 0
    res[i] = a[i]
  end
end

if res.nil?
  puts "-1"
else
  puts res.keys.size
  puts res.keys.join(" ")
end
