n = gets.chomp.to_i
slist = []
result = 0
hhash = Hash.new(0)
n.times do |ni|
  s = gets.chomp
  hash = Hash.new(0)
  s.each_char do |si|
    hash[si] += 1
  end
  hhash[hash] += 1
  slist.push(hash)
end
hhash.each do |k,v|
  result += (v*(v-1))/2
end

puts result
