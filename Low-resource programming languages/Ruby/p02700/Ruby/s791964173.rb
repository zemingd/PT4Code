a, b, c, d = gets.split.map(&:to_i)
takahashi = (c-1)/b+1
aoki = (a-1)/d+1
puts takahashi<=aoki ? "Yes" : "No"
