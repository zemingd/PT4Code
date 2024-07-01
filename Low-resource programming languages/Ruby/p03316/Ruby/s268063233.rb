string_N = gets.chomp
S_N = string_N.split("").map(&:to_i).inject(&:+)
string_N.to_i % S_N == 0 ? print("Yes") : print("No")
