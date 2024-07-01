N = gets.chomp.to_i
input = []
result = Array.new(N,nil)

(N-1).times do
  line = gets.chomp.split(" ").map(&:to_i)
  input << line
end

initpoints = [input[0][0]]
result[input[0][0]-1] = 0

initpoints.each do |e|
  break if input.empty? 
  routes = input.select{|item| item[0] == e || item[1] == e}
  routes.each do |route|
    input.delete(route)
    if result[route[0]-1] == nil
      initpoints << route[0]
      if route[2] % 2 == 0
        result[route[0]-1] = result[route[1]-1]
      else
        result[route[0]-1] = ( result[route[1]-1] + 1 ) % 2
      end
    elsif result[route[1]-1] == nil
      initpoints << route[1]
      if route[2] % 2 == 0
        result[route[1]-1] = result[route[0]-1]
      else
        result[route[1]-1] = ( result[route[0]-1] + 1 ) % 2
      end
    end
  end
end

puts result

