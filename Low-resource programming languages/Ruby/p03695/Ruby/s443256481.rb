n = gets.to_i
a = gets.split.map(&:to_i).map!{|a| a / 400}.sort!

temp = n
for i in 0..(a.length - 1) do
  if a[i] >= 8
    temp = i
    break
  end
end

if temp != 0
  puts a[0..(temp-1)].uniq.sort.length.to_s + ' ' + (a[0..(temp-1)].uniq.sort.length + (n - temp)).to_s
else
  puts '1 ' + n.to_s
end