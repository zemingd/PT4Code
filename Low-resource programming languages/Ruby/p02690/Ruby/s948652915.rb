L=10**10
X=gets.to_i
h={}
L.times do |i|
  n=i**5
  h[n],h[-n]=i,-i
  break if L<n
end
h.each do |b,_|
  a=X+b
  next unless h[a]
  puts [h[a],h[b]]*" "
  break
end
