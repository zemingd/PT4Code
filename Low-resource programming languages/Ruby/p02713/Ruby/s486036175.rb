K = gets.chomp.to_i
answer = 0

$result_map = []
def prime_factorization(n, result = [1])
  if n == 1
    return result
  end

  2.upto(n) do |i|
    if n % i == 0
      result << i
      return prime_factorization(n / i, result)
    end
  end
end

def gcd(a, b, c)
  primes_a = nil
  if $result_map[a] != nil
    primes_a = $result_map[a]
  else
    $result_map[a] = prime_factorization(a)
    primes_a = $result_map[a]
  end

  primes_b = nil
  if $result_map[b] != nil
    primes_b = $result_map[b]
  else
    $result_map[b] = prime_factorization(b)
    primes_b = $result_map[b]
  end

  primes_c = nil
  if $result_map[c] != nil
    primes_c = $result_map[c]
  else
    $result_map[c] = prime_factorization(c)
    primes_c = $result_map[c]
  end

  (primes_a & primes_b & primes_c).reduce(:*)
end

permutations = []

1.upto(K) do |a|
  1.upto(K) do |b|
    1.upto(K) do |c|
      permutations << [a, b, c].sort
    end
  end
end

perms = permutations.sort.chunk_while {|a, b| a == b}

perms.each do |perm|
  p = perm[0]
  answer += gcd(p[0], p[1], p[2]) * perm.count
end

puts answer