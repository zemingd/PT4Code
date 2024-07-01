n,m,c=gets.chomp.split().map(&:to_i)
b = gets.chomp.split().map(&:to_i)
num = 0
n.times do |i|
  code = gets.chomp.split().map(&:to_i)
  cnt=c
  code.each_with_index do |n, i|
    cnt += b[i]*n
  end
  num +=1 if cnt>0
end
puts num

