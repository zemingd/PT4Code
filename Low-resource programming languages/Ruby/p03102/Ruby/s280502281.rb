n, m, c = gets.chomp.split.map(&:to_i)
b_arr = gets.chomp.split.map(&:to_i)
ans = 0
n.times do
  a_arr = gets.chomp.split.map(&:to_i)
  cnt = 0
  m.times do |i|
    cnt+=a_arr[i]*b_arr[i]
  end
  if cnt+c > 0
    ans+=1
  end
end

puts ans