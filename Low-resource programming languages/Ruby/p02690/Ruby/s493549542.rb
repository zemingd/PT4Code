L=10**10
X=gets.to_i
h={}
L.times do |i|
  n=i**5
  h[n],h[-n]=i,-i
  break if L<n
end
h.keys.permutation(2) do |a,b|
  next unless a-b==X
  puts [h[a],h[b]]*" "
  break
end
exit(1)
