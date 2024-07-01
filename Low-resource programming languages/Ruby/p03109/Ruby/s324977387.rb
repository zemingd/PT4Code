require "date"

S = gets.split("/").map {|item| item.to_i }

D = Date.new(S[0], S[1] ,S[2])
L =  Date.new(2019, 04, 30)

if D > L
    puts "TBD"
else
    puts "Heisei"
end