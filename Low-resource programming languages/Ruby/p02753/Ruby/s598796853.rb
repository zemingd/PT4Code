S = gets.chomp
#puts S[0] != S[1] || S[0] != S[2] || S[1] != S[2] ? "Yes" : "No"
#puts S.include?("A") && S.include?("B") ? "Yes" : "No"
puts S.split(//).uniq.length == 2 ? "Yes" : "No"

