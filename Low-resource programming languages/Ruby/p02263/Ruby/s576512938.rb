rex = Regexp.new("^[#{Regexp.escape("+-*")}]$")
exp = gets.split(" ")
loop do
  s = exp.index {|x| (rex =~ x) != nil} - 2
  e = exp.size > 3 ? exp.slice(s, 3) : exp
  r = case e.last
    when "+" then e[0].to_i + e[1].to_i
    when "-" then e[0].to_i - e[1].to_i
    when "*" then e[0].to_i * e[1].to_i
  end
  if exp.size == 3
    exp = r
    break
  else
    exp[s, 3] = r.to_s
  end
end

puts exp