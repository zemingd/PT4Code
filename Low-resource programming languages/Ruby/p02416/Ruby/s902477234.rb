num = gets.split.map(&:to_i)
Math.log10(num.abs).to_i + 1
