abc = gets.split.map(&:to_i)
abc.sort!
p abc[0] + abc[1] == abc[2] ? "Yes" : "No"