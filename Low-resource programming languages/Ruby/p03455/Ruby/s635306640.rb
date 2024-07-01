a,b = gets.split.map(&:to_i)
s = (a*b).odd? 'Odd' : 'Even'
puts s