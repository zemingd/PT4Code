def solve
  res = 10**10
  1.upto(N) do |i|
    break if N < i*i
    next if N%i != 0
    res = [res, [i.to_s.size, (N/i).to_s.size].max].min
  end
  res
end

N=gets.to_i
p solve
