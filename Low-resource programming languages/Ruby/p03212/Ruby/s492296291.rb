n=(ns=gets.chomp).to_i
nl=ns.size
sum=0
for i in 3..nl
  [3,5,7].repeated_permutation(i){|num|
    if num.uniq.size==3
      if num.join("").to_i<n then sum+=1 end
    end
  }
end
puts sum
