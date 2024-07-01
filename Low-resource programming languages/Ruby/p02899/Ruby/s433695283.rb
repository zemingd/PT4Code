N = gets.to_i
As = gets.split.map(&:to_i)

sorted = As.sort
ans = []

sorted.map { |e|
  ans.push(As.index(e)+1)
}

puts ans.join(" ")
