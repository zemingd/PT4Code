chrs = ("a".."z").to_a
array = Array.new(26, 0)
while str = gets.downcase do
  chrs.each_with_index do |chr, index|
    array[index] += str.count(chr).to_s
  end
end
chrs.each_with_index do |chr, index|
  puts chr + " : " + array[index].to_s
end 