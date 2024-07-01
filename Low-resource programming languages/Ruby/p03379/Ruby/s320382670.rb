n = gets.to_i
x = gets.split.map(&:to_i)

# y = x.map.with_index{|t,i| [t,i] }.sort_by{|f,_| f }
y = x.sort

l = y[n/2]
s = y[n/2-1]

x.each do |t|
  if t <= s
    puts l
  else
    puts s
  end
end