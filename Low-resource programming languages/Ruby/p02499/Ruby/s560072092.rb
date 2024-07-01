alpha = Array.new(2 ** 8, 0)
str = gets
str.split(//).each{|i|alpha[i.downcase.ord % (2 ** 8)] += 1}
chr = "a"
26.times do
  puts chr + " : " + alpha[chr.ord % (2 ** 8)].to_s
  chr.next!
end