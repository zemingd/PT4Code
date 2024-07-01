s = gets
inputs = [s[0], s[1], s[3] ]
puts inputs.uniq.size == 1 ? 'No': 'Yes'