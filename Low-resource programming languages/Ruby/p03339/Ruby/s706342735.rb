N = gets.to_i
S = gets.chomp.split("")

min = N

turner_to_e = 0
turner_to_w = S.count("E")

N.times {|i|
  min = [min, turner_to_e + turner_to_w].min
  if S[i] == "W" then
    turner_to_e += 1
  else
    turner_to_w -= 1
  end
}

p min