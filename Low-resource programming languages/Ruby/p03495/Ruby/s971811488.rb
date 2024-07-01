N, K = gets.split(' ').map(&:to_i)
a = gets.split(' ').map(&:to_i)
dic = {}
a.each do |n|
  if dic[n] == nil
    dic[n] = 1
  else
    dic[n] += 1
  end
end
number = dic.values.sort
if number.size > K
  puts number[0...(number.size - K)].inject(:+)
else
  puts '0'
end