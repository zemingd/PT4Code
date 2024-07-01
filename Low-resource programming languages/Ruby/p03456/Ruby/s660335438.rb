n = gets.gsub(" ", "").to_i;
puts (Math.sqrt(n)).floor ** 2 == n ? "Yes" : "No";