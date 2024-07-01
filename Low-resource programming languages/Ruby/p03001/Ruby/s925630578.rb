def main
  w, h, x, y = gets.split.map(&:to_i)

  if w / 2.0 == x && h / 2.0 == y
    result = 1
  else
    result = 0
  end

  puts "#{w * h / 2.0} #{result}"
end

main if $0 == __FILE__
