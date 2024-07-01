n = gets.chomp.to_i
ls = gets.chomp.split.map(&:to_i)

ans = 0
[*(0..(n-1))].combination(3) do |try|
    if ls[try[0]] < ls[try[1]] + ls[try[2]] && ls[try[1]] < ls[try[0]] + ls[try[2]] && ls[try[2]] < ls[try[1]] + ls[try[0]]
        ans += 1
    end
end
puts ans