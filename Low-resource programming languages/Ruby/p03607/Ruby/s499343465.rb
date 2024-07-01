n = gets.chomp.to_i
a = Hash.new
count = 0
n.times do
    i = gets.chomp
    unless a[i]
        a[i] = true
        count += 1
    else
        a[i] = nil
        count -= 1
    end
end
puts count
