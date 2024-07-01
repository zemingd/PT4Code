def main
  price = 700
  gets.chomp.each_char do |c|
    price += 100 if c == 'o'
  end
  puts price
end

if __FILE__ == $0
  main
end
