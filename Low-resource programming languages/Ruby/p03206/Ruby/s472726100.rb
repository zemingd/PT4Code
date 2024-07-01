d = gets.to_i
xmas = "Christmas"
eve = "Eve"

if d == 25
    puts xmas
elsif d == 24
    puts xmas + " " + eve
elsif d == 23
    puts xmas + " " + eve+ " " + eve
elsif d == 22
    puts xmas + " " + eve+ " " + eve + " " + eve 
end