n = gets.to_i
s = gets.chomp
alp = [*"A".."Z"]
res = ""
s.each_char do |char|
  charid = alp.index(char)
  res += alp[(charid+n)%26]
end
puts res