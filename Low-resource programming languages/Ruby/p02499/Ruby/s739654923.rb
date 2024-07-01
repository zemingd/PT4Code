a={};(?a..?z).map{|c|a[c]=0}
$<.map{|x|x.downcase.gsub(/[^\w]/,"").chars.map{|c|a[c]+=1}}
a.map{|k,v|puts "#{k} : #{v}"}