alphabet = "a".."z"
cnt = {}
for i in alphabet
   cnt[i] = 0
end
 
 
while line = gets
   line.each_char{|char|
      for i in alphabet
         if i == char.downcase
            cnt[i] += 1
         end
      end
   }
end
 
cnt.each{|val,key|
   puts "#{val} : #{key}"
}