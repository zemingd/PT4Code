D, T, S = $stdin.gets.split.map {|i| i.to_i }
if S * T >=D
  puts 'Yes'
else
  puts 'No'
end
