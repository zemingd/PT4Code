S = gets.chomp.split("")

result = 0
S.each{|s|
  case s
    when "+" then result += 1
    when "-" then result -= 1
  end
}
puts result