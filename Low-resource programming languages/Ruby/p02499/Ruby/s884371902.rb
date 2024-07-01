a={};(?a..?z).map{|c|a[c]=0}
gets.downcase.gsub(/[^\w]/,"").chars.map{|c|a[c]+=1}
a.map{|k,v|puts "#{k} : #{v}"}