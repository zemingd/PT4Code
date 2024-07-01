S = gets.chomp.split("")
flag = 1

S.size.times do |i|
    if (i + 1) % 2 == 0 && S[i] == "R"
        flag = 0
        break
    elsif (i + 1) % 2 == 1 && S[i] == "L"
        flag = 0
        break
    end
end

if flag == 0
    puts "No"
else
    puts "Yes"
end
