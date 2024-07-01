xy = gets.split.map(&:to_i)
puts [[1,3,5,7,8,10,12],[4,6,9,11]].map{|s| (s&xy).size}.include?(2) ? "Yes" : "No"