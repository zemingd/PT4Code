N, Q = gets.split.map(&:to_i)
S = gets.chomp
ls = Array.new(Q)
rs = Array.new(Q)

ac_rui = [0]
ac_n = 0

(S.length-1).times do |i|
  if(S[i] == "A" && S[i+1] == "C")
    ac_n += 1
  end
  ac_rui[i+1] = (ac_n)
end

Q.times do |i|
  ls[i], rs[i] = gets.split.map(&:to_i)
  puts ac_rui[ rs[i] -1 ] - ac_rui[ ls[i] -1 ]
end

