N, K = gets.split.map(&:to_i)

a, b = [], []
N.times { |i| ai, bi = gets.split.map(&:to_i); a[i], b[i] = ai, bi }

l = 0
hash = {}
a.zip(b).each do |ai, bi|
  hash[ [l, l + bi - 1] ] = ai
  l = l + bi
end

hash.each do |k, v|
  l, r = k
  if (K - 1).between?(l, r)
    puts v
    exit
  end
end