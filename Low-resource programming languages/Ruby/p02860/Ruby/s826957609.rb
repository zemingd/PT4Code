n = gets.to_i
s = gets.chomp

condition = true
if n >= 2 && n.even?
  str = s.split("")
  (n / 2).times do |i|
    if str[i] != str[i + n / 2]
      condition = false
    end
  end
end

puts condition ? "Yes" : "No"
    