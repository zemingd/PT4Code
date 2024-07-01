n = gets.chomp.to_i
ans = []
while(true)
    s = gets.chomp
    ans.push(s)
    if ans.size == n
        break
    end
end

kotae = [0,0,0,0]
ans.each do |value|
    if value == "AC"
        kotae[0] += 1
    elsif value == "WA"
        kotae[1] += 1
    elsif value == "TLE"
        kotae[2] += 1
    elsif value == "RE"
        kotae[3] += 1
    end
end
puts "AC × #{kotae[0]}"
puts "WA × #{kotae[1]}"
puts "TLE × #{kotae[2]}"
puts "RE × #{kotae[3]}"