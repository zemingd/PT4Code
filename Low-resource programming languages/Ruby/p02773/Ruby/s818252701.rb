n = gets.chop
s = readlines.map(&:chomp)

hash = {}
s.each do |str|
  hash[str] ||= 0
  hash[str] += 1
end

puts hash.group_by{|k,v| v}.max[1].to_h.keys.sort
