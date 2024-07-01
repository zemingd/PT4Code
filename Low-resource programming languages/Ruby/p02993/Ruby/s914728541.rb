def main
  code = gets.chomp

  if code[0] == code[1] || code[1] == code[2] || code[2] == code[3]
    puts "Bad"
  else
    puts "Good"
  end
end

main if $0 == __FILE__
