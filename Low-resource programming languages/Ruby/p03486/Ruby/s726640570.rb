def to_dictionary_asc(g = gets)
  g.chomp.split("").sort.join
end

s, t = to_dictionary_asc, to_dictionary_asc

puts s < t ? "Yes": "No"
