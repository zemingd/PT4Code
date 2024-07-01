n = gets.chomp.to_i
x = gets.chomp.split('')

def fuga(num,count=0)
  return count if (num <= 0)
  result = num % num.to_s(2).count('1')
  fuga(result, count+1)
end

n.times do |i|
  tmp = x.dup
  tmp[i] = tmp[i] == '0' ? '1' : '0'
  joined = tmp.join
  hoge = joined.to_i(2)
  puts fuga(hoge)
end
