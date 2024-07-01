s = gets.chomp.chars
n = gets.chomp.to_i
n.times do
  q = gets.chomp
  case q[0]
  when "1"
    s.reverse!
  when "2"
    case q[2]
    when "1"
      s.unshift q[-1]
    when "2"
      s.push q[-1]
    end
  end
end

puts s.join