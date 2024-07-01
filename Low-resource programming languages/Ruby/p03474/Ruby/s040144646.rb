A,B = gets.split.map(&:to_i)
S = gets.chomp

unless S.include?("-") == true
    puts "No"
    return
end

if 1 <= A && B <= 5 && A + B + 1 <= 10 then
    puts "Yes"
else
    puts "No"
end