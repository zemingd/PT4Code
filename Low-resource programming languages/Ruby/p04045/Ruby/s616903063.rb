n,k=gets.chomp.split(" ").map(&:to_i)
d=gets.chomp.split(" ").map(&:to_i)

def ans1(n, d)
  loop do
    break if n.to_s =~ (/\A[^#{d.join("")}]+?\z/)
    n += 1
  end
  n
end

p ans1(n,d)