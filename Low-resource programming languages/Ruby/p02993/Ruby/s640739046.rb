s_arr = gets.chomp.split("")
prev = nil
s_arr.each do |c|
  if prev == c then
    puts "Bad"
    exit
  else
    prev = c
  end
end

puts "Good"
