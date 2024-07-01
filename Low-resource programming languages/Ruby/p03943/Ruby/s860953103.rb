def fightingover(candies)
  candies.sort!
  puts candies[0] + candies[1] == candies[2] ? "Yes" : "No"
end

candies = gets.chomp.split(" ").map(&:to_i)
fightingover(candies)