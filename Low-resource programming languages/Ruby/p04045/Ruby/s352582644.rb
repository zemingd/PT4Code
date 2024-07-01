def hate?(v, hates)
  return hates[v] if v < 10
  return true if hates[v % 10]

  hate?(v / 10, hates)
end

def solve(n, k, d)
  hates = Array.new(10)
  d.each {|i| hates[i] = true}

  (1..Float::INFINITY).lazy
    .map{|i| n * i }
    .find { |i| !hate?(i, hates) }
end

def main
  stdin = STDIN.gets
  nk = stdin.split(/\s/)
  n = nk[0].to_i
  k = nk[1].to_i
  stdin = STDIN.gets
  d = stdin.split(/\s/).map!(&:to_i)

  puts solve(n, k, d)
end

main