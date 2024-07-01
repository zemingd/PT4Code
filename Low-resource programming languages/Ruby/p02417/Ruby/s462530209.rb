alphabet = {}
[*"a".."z"].each do |s|
    alphabet[s] = 0
end

while input = gets
    input.chomp.downcase.split("").each do |s|
        if alphabet[s] != nil
            alphabet[s] += 1
        end
    end
end

alphabet.each do |key, value|
    puts "#{key} : #{value}"
end
