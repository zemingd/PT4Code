n = gets.chomp.to_i
llist = gets.chomp.split.collect{ |item| item.to_i}

result = 0
0.upto(n-3) do |ai|
  (ai+1).upto(n-2) do |bi|
    (bi+1).upto(n-1) do |ci|
      a = llist[ai]
      b = llist[bi]
      c = llist[ci]
      if((a < b+c) && (b < c+a) && (c < a+b))
        result += 1
      end
    end
  end
end

puts result

