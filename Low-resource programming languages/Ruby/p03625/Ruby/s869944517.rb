n = gets.to_i
num = gets.strip.split.map(&:to_i)
rec = Hash.new()
for i in 0..n-1
  if rec.key?(num[i])
    rec[num[i]] += 1
  else
    rec[num[i]] = 1
  end
end
a = rec.to_a
a.sort! {|a,b| a[0] <=> b[0]}.reverse!
ary = []
for i in 0..a.size-1
  if a[i][1] >= 4
    2.times do
      ary << a[i][0]
    end
    break
  elsif
    a[i][1] == 2 || a[i][1] == 3
    ary << a[i][0]
    if ary.size == 2
      break
    end
  else
    next
  end
end
if ary.size == 2
  puts ary[0]*ary[1]
else
  puts 0
end