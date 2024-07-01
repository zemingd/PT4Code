n=[]
$_.downcase.codepoints{|c|n[c]||=0;n[c]+=1} while gets
"abcdefghijklmnopqrstuvwxyz".chars{|c|puts"#{c} : #{n[c.ord].to_i}"}
