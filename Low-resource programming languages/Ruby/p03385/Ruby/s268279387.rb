str = readline.chomp.split("")
puts str.include?("a") && str.include?("b") && str.include?("c") ? "Yes" : "No"