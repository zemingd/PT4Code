s=gets.chomp
k=gets.to_i(&:to_i)

z="z".ord+1

s=s.chars.map.with_index do |c, idx|
  break if k <= 0
  if z-c.ord <= k
    k -= (z-c.ord)
    c=(c.ord+(z-c.ord)).chr
    c='a' if c=='{'
  else
    c=c
  end
end

puts s.join

