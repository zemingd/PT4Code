str = gets.chomp

aidx = -1
zidx = -1

str.each_char.with_index do |char, idx|
    if char == "A" && aidx == -1
        aidx = idx
    elsif char == "Z" && idx > aidx
        zidx = idx
        break
    end
end

print zidx-(aidx+1)