a = gets.strip.chomp.chars
p =[]
q = []
count = 0
a.each_with_index do |i,j|
  if i == "?"
    p << j
  else
    q << j
  end
end

# ?の数だけ強くなれるよ 桁数
n = 10 ** (p.size)

(0..n-1).each do |i|
  num_s  = format("%0*d",p.size, i)
  num_sa = num_s.strip.chomp.chars
  q.size.times do |j|
    num_sa.insert(q[j].to_i,a[q[j]])
  end
  d = num_sa.join("").to_i
  if d % 13 == 5
    count = count + 1
  end
end

puts (count % (10 ** 9 + 7))