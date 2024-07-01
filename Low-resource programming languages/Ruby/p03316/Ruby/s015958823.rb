a=gets
b=a.split("").map(&:to_i).inject(:+).to_i

puts a.to_i%b==0 ? "Yes" : "No"
