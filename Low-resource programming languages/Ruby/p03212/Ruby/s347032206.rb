n = gets.to_i
ary = []

[3,5,7].repeated_permutation(3) do |bits|
  if bits.uniq.size == 3
    ary << bits.join("").to_i
  end
end
[3,5,7].repeated_permutation(4) do |bits|
  if bits.uniq.size == 3
    ary << bits.join("").to_i
  end
end
[3,5,7].repeated_permutation(5) do |bits|
  if bits.uniq.size == 3
    ary << bits.join("").to_i
  end
end
[3,5,7].repeated_permutation(6) do |bits|
  if bits.uniq.size == 3
    ary << bits.join("").to_i
  end
end
[3,5,7].repeated_permutation(7) do |bits|
  if bits.uniq.size == 3
    ary << bits.join("").to_i
  end
end
[3,5,7].repeated_permutation(8) do |bits|
  if bits.uniq.size == 3
    ary << bits.join("").to_i
  end
end
[3,5,7].repeated_permutation(9) do |bits|
  if bits.uniq.size == 3
    ary << bits.join("").to_i
  end
end

arys = ary.sort
puts arys.count{|x| x<=n}