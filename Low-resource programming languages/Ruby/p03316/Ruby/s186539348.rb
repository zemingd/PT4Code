N = gets
sum = N.split("").map(&:to_i).inject(:+).to_i

print N.to_i % sum == 0 ? "Yes" : "No"