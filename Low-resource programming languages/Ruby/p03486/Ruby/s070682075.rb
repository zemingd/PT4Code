s = gets
t = gets
sorted_s = s.split("").sort.join
sorted_t = s.split("").sort.join
puts sorted_s < sorted_t ? "Yes" : "No"
