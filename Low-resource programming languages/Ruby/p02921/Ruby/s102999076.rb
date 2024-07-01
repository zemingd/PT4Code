a = gets.chomp.split("")
b = gets.chomp.split("")
ct = 0
3.times do |i|
    if a[i]==b[i]
        ct +=  1
    end
end

puts ct