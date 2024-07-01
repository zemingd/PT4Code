a, b = gets.split.map(&:to_i)
if (a-b).odd?
  puts :IMPOSSIBLE
  exit
end
puts (a+b)/2
