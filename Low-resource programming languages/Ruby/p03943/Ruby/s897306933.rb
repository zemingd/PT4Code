candy = gets.split.map(&:to_i).sort
puts candy[0] + candy[1] == candy[2] ? 'Yes' : 'No'
