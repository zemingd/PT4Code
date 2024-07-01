while line = gets
  a = Integer(line.delete(' '))
  b = Math.sqrt(a).floor ** 2
  puts a === b ? 'Yes' : 'No'
end
