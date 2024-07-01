N = gets.to_i
A = gets.split.map(&:to_i).sort!

def divisors(n)
  d = []
  1.upto(Math.sqrt(n).to_i) do |i|
    if n % i == 0
      d << i
      d << n / i
    end
  end
  d
end

divs = (divisors(A[0]) | divisors(A[1])).sort_by! { |a| -a }
counts = Array.new(divs.size, 0)

A.each do |a|
  divs.each_with_index do |div, idx|
    counts[idx] += 1 if a % div == 0
  end
end

counts.each.with_index do |count, idx|
  if count >= N - 1
    puts divs[idx]
    break
  end
end