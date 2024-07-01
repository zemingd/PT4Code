n = gets.to_i
pn = gets.split().map(&:to_i)

ans = 0
(pn.length-2).times do |i|
  if pn[i]<pn[i+1] && pn[i+1]<pn[i+2]
    ans += 1
  elsif pn[i]>pn[i+1] && pn[i+1]>pn[i+2]
    ans += 1
  end
end

puts ans