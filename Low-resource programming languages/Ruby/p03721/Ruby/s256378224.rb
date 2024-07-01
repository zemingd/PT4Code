N, K = gets.split.map(&:to_i)

H = Hash.new(0)
N.times{ 
  a, b = gets.split.map(&:to_i)
  H[a] += b
}

sum = 0
H.sort.each do |k,v|
  sum += v
  if sum >= K
    puts k
    exit
  end
end