a,b=gets.split
number = (a+b).to_i
isSquareNumber=false
(2..number).each do |value|
  isSquareNumber=true if number == value**2
  break if isSquareNumber
end
puts isSquareNumber ? :Yes : :No