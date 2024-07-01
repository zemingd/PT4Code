arr=gets.split.map(&:to_i).sort
puts (arr[2] === arr[0]+arr[1]) ? 'Yes' : 'No'