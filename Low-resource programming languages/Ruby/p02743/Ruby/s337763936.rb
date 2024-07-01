a,b,c = gets.split.map(&:to_i)
Math.sqrt(a) + Math.sqrt(b) < Math.sqrt(c) ? p 'Yes' : p 'No'
