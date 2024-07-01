n,m = gets.chomp.split.map(&:to_i)
max = 0
count = 0
num = 0
hash = {}
n.times do
  input = gets.chomp.split.map(&:to_i)
  if hash.has_key?(input[0])
    hash[input[0]] += input[1]
  else
    hash[input[0]] = input[1]
  end
#  count += input[1]
#  max = (input[0] > max) ? input[0] : max
#  if count >= m
#
#    puts input[0]
#  end
#  num = input[1]
end

arr = hash.sort_by{|k,v| k}

arr.each do |o|
  count += o[1]
  if count >= m
    puts o[0]
    exit
  end
end