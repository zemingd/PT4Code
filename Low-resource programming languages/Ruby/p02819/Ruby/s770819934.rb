require 'prime'
x = gets.to_i
array = []

(x..x+100).each do |e|
  if e.prime?
    puts e
    exit
  end
end
