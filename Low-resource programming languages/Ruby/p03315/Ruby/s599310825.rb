def main
  str = gets.chomp
  r = 0
  str.each_char do |s|
    case s
    when '+'
      r += 1
    when '-'
      r -= 1
    end
  end
  puts r
end

main