s=gets.chomp
a="ACGT"
count=0
can=false
s.length.downto(1) do |i|
  can=false
  0.upto(s.length-i) do |j|
    if s[j, i].count("^#{a}")==0
      count=i
      can=true
      break
    end
  end
  if can
    break
  end
end
puts count
