def irohaandhaiku(haiku)
  puts haiku.count(5) == 2 && haiku.count(7) == 1 ? "YES" : "NO"
end


haiku = gets.chomp.split(" ").map(&:to_i)
irohaandhaiku(haiku)