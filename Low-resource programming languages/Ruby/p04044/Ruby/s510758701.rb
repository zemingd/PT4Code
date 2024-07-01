ans = ""
n, l = gets.strip.split.map(&:to_i)
tab = []
n.times do

tab << gets.strip
end
tab = tab.sort
for s in tab do
ans << s
end
puts ans.strip