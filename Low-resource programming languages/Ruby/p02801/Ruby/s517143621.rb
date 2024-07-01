matcing = gets.chomp.to_s
alphabet = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
0.step(alphabet.length) do |i|
    if matcing == alphabet[i]
        printf("%s\n",alphabet[i+1])
        break
    end
end