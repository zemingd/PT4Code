n = gets.to_i
s = gets.chomp.split("")

if s.count("#") == 0 || s.count(".") == 0
   puts("0")
else
   f_b = s.index("#")
   bf_b = s[0..f_b]
   af_b = s[f_b+1..-1]

   print(bf_b,"\n")
   print(af_b,"\n")
   if af_b.length == 0 #_ #^
      puts("0")
   elsif bf_b.length == 1 #_ ~#
      if s.count("#") > s.count(".")
         puts s.count(".")
      else
         puts s.count("#")
      end
   else

      if af_b.count("#") >= af_b.count(".")
         puts af_b.count(".")
      else
         puts af_b.count("#")+1
      end
   end
end