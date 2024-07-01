n = gets.to_i
fn = 0
n.to_s.each_char {|c| fn += c.to_i}
puts n % fn == 0 ? "Yes" : "No"