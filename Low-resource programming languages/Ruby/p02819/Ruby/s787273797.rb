require 'prime'

x = gets.chomp.to_i

Prime.each(100003).each do |num|
  if num >= x
    puts num 
    break
  end
end