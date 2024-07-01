s = gets.chomp
len = s.length
n = len / 2
if len.odd?
  ans1 = ('10' * n + '1').split('')
  ans2 = ('01' * n + '0').split('')
else
  ans1 = ('10' * n + '1').split('')
  ans2 = ('01' * n + '0').split('')
end

a1 = 0
s.split('').each_with_index do |e, i|
  a1 += 1unless ans1[i] == e
end

a2 = 0
s.split('').each_with_index do |e, i|
  a2 += 1unless ans2[i] == e
end

if a1 > a2
  puts a2
else
  puts a1
end