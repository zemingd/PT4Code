n = gets.to_i
a_a = gets.split.map(&:to_i)
b_a = gets.split.map(&:to_i)
n.times do |i|
  b_a[i] = [i,b_a[i]]
end
b_a.sort_by! { |b| b[1] }
sum = 0
n.times do
  b_max = b_a[-1]
  diff = (a_a[b_max[0]] + a_a[b_max[0]+1]) - b_max[1]
  if diff < 0
    sum += (a_a[b_max[0]] + a_a[b_max[0]+1])
    a_a[b_max[0]],a_a[b_max[0]+1] = 0,0
  else
    sum += b_max[1]
    if a_a[b_max[0]] > a_a[b_max[0]+1]
      a_a[b_max[0]],a_a[b_max[0]+1] =  0,diff
    else
      a_a[b_max[0]],a_a[b_max[0]+1] =  diff,0
    end
  end
  b_a.delete_at(-1)
end
puts sum