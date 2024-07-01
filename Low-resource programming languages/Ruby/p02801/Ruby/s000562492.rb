A = (?a..?z).to_a
C = gets.chomp
i = A.find_index {|x| x == C}
puts A[i.next]
