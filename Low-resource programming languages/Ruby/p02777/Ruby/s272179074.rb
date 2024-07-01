st = gets.split.map(&:to_sym)
n = gets.split.map(&:to_i)
hash = {}
hash[st[0]] = n[0]
hash[st[1]] = n[1]
k = gets.chomp
hash[k.to_sym] -= 1
puts "#{hash[st[0]]} #{hash[st[1]]}" 