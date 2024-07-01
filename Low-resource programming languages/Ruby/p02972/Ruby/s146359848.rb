N = gets.to_i
A = gets.chomp.split(" ").map(&:to_i)

A.unshift(0)
B = Array.new(N + 1)
N.downto(1){|i|
  w = A[i]
  c = 2
  while(c * i <= N) do
    w ^= B[c * i]
    c += 1
  end
  B[i] = w
}

puts B.count{|b| b == 1}
(1..N).each{|i|
  printf("#{i} ") if B[i] == 1
}
printf("\n")
