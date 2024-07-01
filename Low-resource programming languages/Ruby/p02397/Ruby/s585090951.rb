loop do
  a,b = gets.split(" ").map(&:to_i).sort
  if a == 0 && b == 0 then break end
  puts "#{a} #{b}"
end