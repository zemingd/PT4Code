n, a = $stdin.read.split("\n").map(&:to_i)
print n%500 <= a ? "Yes" : "No"