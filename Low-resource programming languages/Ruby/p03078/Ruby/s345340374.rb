x, y, z, k = gets.split.map(&:to_i)
A = gets.split.map(&:to_i).sort_by {|a| -a}
B = gets.split.map(&:to_i).sort_by {|b| -b}
C = gets.split.map(&:to_i).sort_by {|c| -c}

abc = []
0.upto(A.size - 1) do |a|
  0.upto(B.size - 1) do |b|
    if (a + 1) * (b + 1) > k
      break
    end
    0.upto(C.size - 1) do |c|
      if (a + 1) * (b + 1)  * (c + 1) > k
        break
      end

      abc << A[a] + B[b] + C[c]
    end
  end
end

abc = abc.sort_by {|a| -a}
0.upto(k-1) do |i|
  puts abc[i]
end
