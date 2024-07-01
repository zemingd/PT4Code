def main
  x, a = gets.split.map(&:to_i)
  if x < a
    puts 0
  else
    puts 10
  end
end

main if $0 == __FILE__
