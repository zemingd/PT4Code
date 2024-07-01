# 一行に整数ひとつだけ
n = gets.chomp.to_i

k = []
n.times do
  k << gets.chomp.split.map(&:to_i)
end

k.sort_by! { |a| a[1]}

curr = 0
good = true
k.each do |kk|
  curr += kk[0]
  if curr > kk[1]
    good = false
    break
  end
end

puts good ? 'Yes' : 'No'