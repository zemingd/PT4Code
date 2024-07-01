a,b=gets.split.map(&:to_i)
puts gets.chomp=~/\d{#{a}}-\d{#{b}}/ ? :Yes: :No