n = gets.chomp.to_i
spots = []
n.times do
  spots << gets.chomp.split(" ").map(&:to_i)
end
selected_x, selected_y, selected_h = spots.find { |item| item[2] > 1 }

center = []
catch(:break) do 
  0.upto(100) do |x|
    0.upto(100) do |y|
      h = selected_h + (x - selected_x).abs + (y - selected_y).abs
      answer = true
      spots.each do |spot|
        if spot[2] != [h - ((x - spot[0]).abs + (y - spot[1]).abs), 0].max 
          answer = false
          break
        end
      end
      if answer
        center = [x, y, h]
        throw(:break)
      end
    end
  end
end
puts center.join(" ")