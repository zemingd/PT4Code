a, b, c, x = *(0..3).collect{ARGF.gets.chomp.to_i}

number_of_resolves = 0

(0..a).each do |number_of_using_a|
  (0..b).each do |number_of_using_b|
    (0..c).each do |number_of_using_c|
      if number_of_using_a * 500 + number_of_using_b * 100 + number_of_using_c * 50 == x
        number_of_resolves += 1
      end
    end
  end
end

puts number_of_resolves