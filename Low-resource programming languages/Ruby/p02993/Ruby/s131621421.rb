code = gets.chars
puts(code.drop(1).zip(code).any?{|a, b| a == b} ? 'bad' : 'good')
