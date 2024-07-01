gets
h = {
  "AC" => 0,
  "WA" => 0,
  "TLE" => 0,
  "RE" => 0,
}
ARGF.each_line { |l|
  h[l.strip] += 1
}

puts h.to_a.map { |a| a.join(" x ") }.join("\n")