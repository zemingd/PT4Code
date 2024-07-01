while true do
    val = gets.chomp.split("").map(&:to_i).inject(:+)
    break if val == 0
    puts val
end
