matcing = gets.chomp.to_s
alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
0.step(alphabet.length) do |i|
    if matcing == alphabet[i]
        printf("%s\n",alphabet[i+1])
        break
    end
end