candy = gets.strip.split.map(&:to_i).sort!


puts candy[0] + candy[1] == candy[2] && candy[2].even? ? "Yes" : "No"