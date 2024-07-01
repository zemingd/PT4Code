N = gets.to_i
A = gets.split.map(&:to_i)
order_A = Array.new()

(1..N).each do |i_A|
  oreder_A = A.shift
  order_A[oreder_A - 1] = i_A
end

#p order_A

ans = order_A.join(" ")
puts ans