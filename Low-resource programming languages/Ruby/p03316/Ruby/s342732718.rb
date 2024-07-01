a=gets
b=a.split("").map(&:to_i).inject(:+).to_i

puts a%b==0 ? "Yes" : "No"