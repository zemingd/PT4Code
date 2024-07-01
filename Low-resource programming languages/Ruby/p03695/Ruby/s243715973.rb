N = gets.to_i
as = gets.split.map(&:to_i)

kinds = {}

as.each do |a|
  if a <= 399
    kinds["399"] = kinds["399"].to_i + 1
  elsif a <= 799
    kinds["799"] = kinds["799"].to_i + 1
  elsif a <= 1199
    kinds["1199"] = kinds["1199"].to_i + 1
  elsif a <= 1599
    kinds["1599"] = kinds["1599"].to_i + 1
  elsif a <= 1999
    kinds["1999"] = kinds["1999"].to_i + 1
  elsif a <= 2399
    kinds["2399"] = kinds["2399"].to_i + 1
  elsif a <= 2799
    kinds["2799"] = kinds["2799"].to_i + 1
  elsif a <= 3199
    kinds["3199"] = kinds["3199"].to_i + 1
  else
    kinds["X"] = kinds["X"].to_i + 1
  end
end

if kinds.reject { |k, v| k == "X" }.count == 0
  min = 1
  max = kinds["X"]
elsif kinds.select { |k, v| k == "X" }.count > 0
  min = kinds.count - 1
  max = min + kinds["X"]
else
  min = kinds.count
  max = min
end

puts "#{min} #{max}"