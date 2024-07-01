require 'pp'

X,A = readline.chomp.split.map(&:to_i)
if X < A
  puts '0'
else
  puts '10'
end

