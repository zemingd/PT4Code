N = gets.chomp.to_i

guides = []

N.times do |i|
  input = gets.chomp.split(' ')
  si = input[0]
  point = input[1].to_i
  guides.push( { city: si, number: i+1, point: point } )
end

guides.sort! { |a, b| b[:point] <=> a[:point] }
guides.sort! { |a, b| a[:city]  <=> b[:city] }

guides.each { |g| puts g[:number] }
