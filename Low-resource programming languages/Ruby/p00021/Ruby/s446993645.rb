array = gets.chomp.split(" ").map(&:downcase)
hash = {}
array.each do |str|
    if hash.has_key?(str)
        hash[str] += 1
        else
        hash[str] = 0
    end
end
puts hash.max{|a, b| a[1] <=> b[1]}[0] + " " + hash.keys.max{|str| str.length}