S = gets.chomp
if S.size.odd?
    puts "No"
    exit
end
(S.size).times do |i|
    if !((i.even? && S[i]=="h") || (i.odd? && S[i]=="i"))
        puts "No"
        exit
    end
end
puts "Yes"

