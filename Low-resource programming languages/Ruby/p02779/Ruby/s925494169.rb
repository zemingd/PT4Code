gets
input = gets.split.map(&:to_i)
_inputs = input.uniq
puts input.size == _inputs.size ? 'YES' : 'NO'