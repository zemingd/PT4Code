s = gets.chomp
t = gets.chomp
n = s.length

sh = Hash.new{|hash, key| hash[key] = []}
th = Hash.new{|hash, key| hash[key] = []}

for i in 0..n-1 do
  sh[s[i]] << i
  th[t[i]] << i
end


if sh.values == th.values
  puts "Yes"
else
  puts "No"
end
