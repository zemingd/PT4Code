a, b, c, d = gets.split(" ").map(&:to_i)

result = if (a - c).abs <= d
           "Yes"
         elsif (a - b).abs <= d && (b -c).abs <= d
           "Yes"
         else
           "No"
         end
puts result