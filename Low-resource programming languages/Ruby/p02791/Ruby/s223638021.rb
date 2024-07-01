n = gets.chomp.to_i
s = gets.chomp.split(" ")
count = 0
arr = Float::INFINITY
n.times do |i|
    mokuteki = s[i]
    arr = [mokuteki.to_i,arr].min
    if mokuteki.to_i <= arr
        count += 1
    end
end
puts count