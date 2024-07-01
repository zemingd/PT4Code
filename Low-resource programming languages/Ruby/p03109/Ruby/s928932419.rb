s = gets.chomp.split("/")
output = "TBD"
if s[1].to_i < 5
    output = "Heisei"
end
puts output