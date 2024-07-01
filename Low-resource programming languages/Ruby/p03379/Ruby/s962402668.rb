n = $stdin.gets.to_i
a_org = $stdin.gets.split.map(&:to_i)

a = a_org.sort
# p a

threshold_a = a[n/2 - 1]
threshold_b = a[n/2]


# p [threshold_a, threshold_b]

n.times do |i|
  # puts i
  if a_org[i] <= threshold_a
    puts threshold_b
  else
    puts threshold_a
  end  
end