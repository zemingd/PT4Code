n = gets.chomp.to_i
s = gets.chomp.to_s

a = s.scan(/.{1,#{1}}/)

i = 0

while a[i]
    if a[i] == a[i + 1]
        a.delete_at(i)
    else
        i += 1
    end
end

puts a.length