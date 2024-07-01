# frozen_string_literal: true

x = gets.to_i

-300.upto(300).each do |a|
  -300.upto(300).each do |b|
    if a**5 - b**5 == x
      puts "#{a} #{b}"
      exit
    end
  end
end
