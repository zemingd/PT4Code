n = gets.chomp.to_i
alist = gets.chomp.split.collect{ |item| item.to_i}

def gcd(a,b)
  gcd(b, a) if b > a
  return b if (r = a % b).zero?
  gcd(b, r)
end

resultlist = []
n.times do |nn|
  out = alist.shift
  newresult = alist[0]
  (n-1).times do |nnn|
    newresult = gcd(newresult,alist[nnn])
    break if newresult == 1
  end
  resultlist.push(newresult)
  alist.push(out)
end

puts resultlist.max