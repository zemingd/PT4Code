N = gets.to_i
V = gets.split.map &:to_i

VE = V.select.with_index(1){|v, i|v if i.even?}
VO = V.select.with_index(1){|v, i|v if i.odd?}

def count_desc(a)
  a.uniq.map{|v|a.count(v)}.sort_by{|v|v}.reverse
end

cve = count_desc(VE)
cvo = count_desc(VO)

if VE == VO
  puts N/2
elsif cve.size == 1 && cvo.size == 1
  puts 0
elsif cve.size == 1 && cvo.size != 1
  buf = cvo.drop(1).inject(:+)
  puts cvo[0] < buf ? N/2-cvo[0] : N/2-buf 
elsif cve.size != 1 && cvo.size == 1
  buf = cve.drop(1).inject(:+)
  puts cve[0] < buf ? N/2-cve[0] : N/2-buf 
else
  puts N   - cve[0] - cvo[0]
end

