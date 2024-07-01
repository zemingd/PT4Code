x = gets.to_i

def fetch_prime_list(max)
  table = Array.new(max + 1,true)
  prime_list = []

  (2..max).each do |num|
    if table[num] == true
      prime_list << num
      k = num * num
      while k <= max
        table[k] = false
        k += num
      end
    end
  end
  return prime_list
end

array = fetch_prime_list(100000)

loop do
  if array.include?(x)
    puts x
    exit
  else
    x += 1
  end
end

