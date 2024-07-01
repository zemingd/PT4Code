x,y = gets.split(" ")

ans = if x < y
        "<"
      elsif x > y
        ">"
      else
        "="
      end

puts ans