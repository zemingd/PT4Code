X = gets.chomp.to_i

prime_arr = []
X.times do |i|
  prime_arr << i+1 if prime_arr.none?{|n| (i+1) % n == 0} && i > 1
end

if prime_arr.none?{|n| X % n == 0}
  puts X
else
  add = X%2==0 ? 1 : 0
  103.times do |i|
    x = X + (2*i + add)
    if prime_arr.none?{|n| x % n == 0}
      puts x
      break
    end
  end
end
