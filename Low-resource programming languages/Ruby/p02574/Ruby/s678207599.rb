n = gets().chomp.to_i
array = gets.chomp.split(" ").map{|num| num.to_i}

n = array.max

hash = Hash.new
prime = []
for i in 2..n do
    if hash[i] == nil
        prime << i
        j = i
        while j*i <= n do
            hash[j*i] = 1
            j += 1
        end
    end
end

prime_hash1 = {}
prime.each do |p|
  prime_hash1[p] = false
end

prime_hash2 = {}
prime.each do |p|
  prime_hash2[p] = true
end

pairwise_coprime = true
for i in 0..array.length-1 do
  j = 0
  while prime[j] <= (Integer.sqrt(array[i]) + 1) do
    if prime_hash1[prime[j]] == true && array[i] % prime[j] == 0
      pairwise_coprime = false
      break
    end
    prime_hash1[prime[j]] = true if array[i] % prime[j] == 0
    j += 1
  end
end

print "pairwise coprime" if pairwise_coprime