N = gets.to_i
A = []
N.times {
  A << gets.to_i
}

hash = Hash.new
A.each do |a|
  if hash.key?(a)
    hash[a] += 1
  else
    hash[a] = 1
  end
end

count = 0

hash.each do |k, v|
  if v % 2 == 1
    count += 1
  end
end

p count 