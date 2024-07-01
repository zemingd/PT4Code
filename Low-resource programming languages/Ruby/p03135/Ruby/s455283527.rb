def main()
  t, x = gets.chomp.strip.split(' ').map(&:to_i)
  puts "#{(t*1.0)/x}"
end
main