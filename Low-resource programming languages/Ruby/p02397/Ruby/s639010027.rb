while true do
  a,b = gets.chomp.split.map(&:to_i)
  break if a  == 0 && b == 0
  if a < b
    puts "#{a} #{b}"
  else
    puts "#{b} #{a}"
  end
end
