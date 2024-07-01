
class Integer
  def factorial
    (1..self).inject(1,:*)
  end
  alias :! :factorial
end

h = Hash.new do |hash, key|
  hash[key] = 0 
end

a = gets.to_i
a.times do
  s = gets.chomp
  s = s.chars.sort.join
  h[s] += 1
end

hf = Hash.new

ans = 0
h.each_pair do |key, value|
  if value >= 2
    if ! hf.key?(value)
      hf[value] = value.!
    end

    if ! hf.key?(value - 2)
      hf[value - 2] = (value - 2).!
    end

    ans += (value.! / 2 * (value - 2).!)
  end
end

p ans 

