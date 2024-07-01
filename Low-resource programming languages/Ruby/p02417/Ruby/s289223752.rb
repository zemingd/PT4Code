chrs = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
array = Array.new(26, 0)
while true do
    str = gets.downcase
    break if str.count("a-z") == 0
    str = str.downcase
    chrs.each_with_index do |chr, index|
        array[index] += str.count(chr)
    end
end
chrs.each_with_index do |chr, index|
    puts chr + " : " + array[index].to_s
end