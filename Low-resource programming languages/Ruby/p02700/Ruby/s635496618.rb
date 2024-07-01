A,B,C,D = gets.split.map(&:to_i)
puts((A+D-1)/D < (C+B-1)/B ? 'No' : 'Yes')
