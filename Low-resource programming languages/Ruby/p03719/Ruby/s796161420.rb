A,B,C = `dd`.split.map &:to_i
puts A <= C && C <= B ? "Yes" : "No"