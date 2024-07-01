x = gets.to_i
require 'prime'
Prime.each do |pri|
  if pri >= x
    puts pri
    exit
  end
end