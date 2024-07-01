H,W = gets.split.map(&:to_i)
S = [
  ("." * (W+2)),
  *((0...H).map{
    "."+gets.chomp+"."
  }),
  ("." * (W+2)),
]  

puts (1..H).any?{ |i|
  (1...W).any?{ |j|
    S[i][j] == "#" && S[i-1][j] == "." && S[i+1][j] == "." && S[i][j-1] == "." && S[i][j+1] == "."
  }
} ? "No" : "Yes"
