t = Time.now

ARRAY = "abc".split('')
S = gets.chomp.split('')

while Time.now - t < 1.9 do
    if ARRAY.shuffle == S
        puts "Yes"
        exit
    end
end

puts "No"