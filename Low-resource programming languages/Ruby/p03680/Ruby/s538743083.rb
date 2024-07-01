n = gets.to_i
a = [nil]
n.times do
  a.push(gets.to_i)
end

now_shine = 1

1.upto(n) do |i|
  now_shine = a[now_shine]
  if now_shine == 2
    puts i
    exit
  end
end

puts -1