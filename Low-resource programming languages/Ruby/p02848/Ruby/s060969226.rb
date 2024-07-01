N = gets.to_i
S = gets.chomp.split('').map(&:ord)
ans = []
num = 0

S.each do |s|
  num = s + N
  if num > 90
    num = num - 90 + 64
  end
  ans.push(num.chr)
end

puts ans.join()