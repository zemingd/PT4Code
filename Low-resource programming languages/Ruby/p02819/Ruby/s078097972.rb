require "prime"
x = gets.to_i
Prime.each do |pr|
  if pr >= x
    p pr
    exit
  end
end