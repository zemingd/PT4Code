inputs = $stdin.read.split("\n").drop(1)
result = inputs.permutation(inputs.count).to_a.map { |i| i.join("") }.sort.first
print result