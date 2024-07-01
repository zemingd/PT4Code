ARGF.each_line do |line|
    a, q, b = line.split
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
    end
    puts z
end