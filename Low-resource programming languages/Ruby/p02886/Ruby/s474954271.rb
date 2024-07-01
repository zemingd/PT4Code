#set
kazu = gets.chomp.to_i
takoyakis = Array.new
takoyakis = gets.chomp.split(" ").map(&:to_i)
power = 0

#main
(0 .. kazu - 2).each do |i|
    (i + 1 .. kazu - 1).each do |j|
    power += takoyakis[i] * takoyakis[j]
    end
end

print ("#{power}\n")