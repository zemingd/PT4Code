input = STDIN.gets.split('').map(&:to_i)
hash = {}

input.each do |item|
  if hash.has_key?(item)
    hash[item] += 1
  else
    hash[item] = 1
  end
end
ret = "No"
hash.each do |k,v|
  if v >= 3
    ret = "Yes"
    break
  end
end

STDOUT.puts ret