a,b,c = gets.split.map(&:to_i)
puts c-(a-b) if c>a-b
puts 0 if c<=a-b
