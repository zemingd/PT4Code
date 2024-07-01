# abc109 A
a, b = gets.split.map(&:to_i)
puts [1,2,3].any?{|i|(a * b * i).odd?} ? 'Yes' : 'No'

