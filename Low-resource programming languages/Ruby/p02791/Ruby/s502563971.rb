n = gets.to_i
s = gets.chomp.split(" ").map(&:to_i)
s = s.unshift(" ")
count = 0
n.times do |i|
    mokuteki = s[i+1]
    ar = s[0..i+1].sort
    if mokuteki.to_i <= ar[1].to_i
        count += 1
    end
end
puts count