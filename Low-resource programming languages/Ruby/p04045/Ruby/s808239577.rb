value, num = gets.split.map(&:to_i)
arr = gets.split

loop do
    repeat = false
    value.to_s.each_char do |c|
        if arr.include?(c) then
            value += 1 
            repeat = true
            break
        end
    end
    break unless repeat
end

puts value