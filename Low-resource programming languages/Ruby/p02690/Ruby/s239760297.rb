L=10**6
X=gets.to_i
h={}
L.times do |i|
  n=i**5
  [n+X,n-X].each do |x|
    next unless h[x]
    puts [i,h[x]]*" "
    exit 0
  end
  h[n],h[-n]=i,-i
end
exit 1