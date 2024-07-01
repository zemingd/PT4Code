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

if k > 0
  k=k%26
  a = s[-1].ord+k
  if a > "z".ord
    s[-1] = (a-25).chr
  else
    s[-1] = a.chr
  end
end

puts s.join

