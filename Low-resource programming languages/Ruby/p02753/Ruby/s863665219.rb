s = gets
inputs = [s[0], s[1], s[2] ]
puts inputs.uniq.size == 1 ? 'No': 'Yes'