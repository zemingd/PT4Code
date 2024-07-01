n = gets.chop.to_i
a = gets.chop.split.map(&:to_i)

key = []

n.times do |i|

  row = [a[i], i]

  key << row

end


key =  key.sort



tmp = []

n.times do |i|
  tmp << key[i][1] + 1
end

puts tmp.join(' ')

