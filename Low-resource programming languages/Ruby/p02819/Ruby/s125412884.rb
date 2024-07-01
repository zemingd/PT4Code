require 'prime'
x = gets.to_i
x.upto(x+100000) do |i|
  if i.prime?
    p i
    exit
  end
end