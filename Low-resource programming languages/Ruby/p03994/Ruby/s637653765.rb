s=gets.chomp
k=gets.to_i(&:to_i)

z="z".ord+1

s=s.chars.map do |c|
  next c if k <= 0
  next c if z-c.ord > k
  k -= (z-c.ord)
  c = c.ord+(z-c.ord)
  c > "z".ord ? (c-26).chr : c.chr
end

if k > 0
  k=k%26
  a = s[-1].ord+k
  if a > "z".ord
    s[-1] = (a-26).chr
  else
    s[-1] = a.chr
  end
end

puts s.join

