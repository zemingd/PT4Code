n = gets.to_i
a = gets.split.map &:to_i; b = Array.new
n.times do |now|
  if n % 2 == 0
    now % 2 == 0 ? b.push(a[now]) : b.unshift(a[now])
  else
    now % 2 == 0 ? b.unshift(a[now]) : b.push(a[now])
  end
end
puts b.join(" ")
