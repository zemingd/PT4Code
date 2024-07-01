S = gets.chomp
A = S[0]
B = S[1]
C = S[2]
D = S[3]

(0...(1<<3)).each do |n|
  ope = []
  3.times do |i|
    ope << ((n&(1<<(i-1))) == 0 ? "+" : "-")
  end
  s = "#{A}#{ope[0]}#{B}#{ope[1]}#{C}#{ope[2]}#{D}"
  if eval(s) == 7
    puts "#{s}=7"
    exit
  end
end
