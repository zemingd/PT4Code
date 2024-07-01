ARGF.each_line do |line|
    a, q, b = line.split.to_s
    break if q == "?"
    case q
    when "+"
      z = a.to_i + b.to_i
    when "-"
      z = a.to_i - b.to_i
    when "*"
      z = a.to_i * b.to_i
    when "/"
      z = a.to_i / b.to_i
    puts z
end