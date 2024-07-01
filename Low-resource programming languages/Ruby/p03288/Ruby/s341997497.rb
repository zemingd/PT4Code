S = gets.chomp
Sa = S.dup
Sa[0, 2] = ""
Sa[-1] = ""

if ((S[0] == "A") && (Sa.count("C") == 1) && (S.count("A-Z") == 2))
  puts("AC")
else
  puts("WA")
end
