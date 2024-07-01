n = gets.chomp.to_i

num = gets.chomp.split(" ").map(&:to_i)

n.times do |i|
    array = Marshal.load(Marshal.dump(num))
    array.delete_at(i)
    array.sort!
    puts array[((array.length + 1) / 2) - 1]
end
