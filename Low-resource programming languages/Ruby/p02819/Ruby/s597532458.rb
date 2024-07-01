require 'prime'
x = gets.to_i
Prime::EratosthenesGenerator.new.each do |prime|
  if prime >= x
    puts prime
    exit
  end
end
