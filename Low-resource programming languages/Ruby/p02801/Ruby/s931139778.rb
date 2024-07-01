c = gets.chomp

keys = ('a'..'y').to_a
vals = ('b'..'z').to_a
hash = Hash[keys.zip vals]

puts hash[c]