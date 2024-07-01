A, B = gets.split.map(&:to_i)
has_odd = (1..3).any? { |c| (A * B * c).odd? }
puts(has_odd ? 'Yes' : 'No')
