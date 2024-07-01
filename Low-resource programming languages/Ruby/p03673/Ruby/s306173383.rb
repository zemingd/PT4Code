n=gets.to_i
a=gets.split.map(&:to_i)
n.times do |i|
  if i<n/2
    puts a[n-1-2*i]
  elsif i==n/2
    puts a[0]
  else
    puts a[(i-n/2)*2-n%2] 
  end
end
