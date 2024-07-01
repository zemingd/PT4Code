S = gets.chomp
puts S.gsub(/hi/, "a").length == S.length/2 ? "Yes" : "No"