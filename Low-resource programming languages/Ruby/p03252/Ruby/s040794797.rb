S = gets.chomp
T = gets.chomp

hash1 = Hash.new
hash2 = Hash.new
S.length.times do |i|
    a = S[i]
    b = T[i]
    if hash1[a] == nil && hash2[b] == nil
        hash1[a] = b
        hash2[b] = a
    elsif hash[a] == b && hash[b] == a
    else
        puts "No"
        break
    end 
end and puts "Yes"