N=gets.chomp.to_i
A=gets.chomp.split(" ").map { |e| e.to_i  }

def number_of_diveide_N(n,x)
  ans =0
  while (x % n == 0) do
    ans += 1
    x = x/2
  end
  return ans
end

ans = 0

for i in A do
  ans += number_of_diveide_N(2,i)
end

puts ans