N, K = gets.split.map(&:to_i)

H = []
N.times{ H.push( gets.split.map(&:to_i) ) }

sum = 0
H.each do |k,v|
  sum += v
  if sum >= K
    puts k
    exit
  end
end