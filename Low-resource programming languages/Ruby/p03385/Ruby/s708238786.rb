ARRAY = "abc".split('')
S = gets.chomp.split('')
t = Time.now

while Time.now - t < 1.5 do
    if ARRAY.shuffle[0, 3] == S
        puts "Yes"
        exit
    end
end

puts "No"