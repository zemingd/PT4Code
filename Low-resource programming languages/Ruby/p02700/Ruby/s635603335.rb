gets.split.map(&:to_i).then do |a, b, c, d|
  puts (a/d) >= (c/b) ? 'Yes' : 'No'
end
