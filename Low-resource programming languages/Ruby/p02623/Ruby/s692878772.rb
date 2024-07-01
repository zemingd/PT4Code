n, m, k = gets.chomp.split(' ').map{|i| i.to_i }
a = gets.chomp.split(' ').map{|i| i.to_i }
b = gets.chomp.split(' ').map{|i| i.to_i }

#     nowmin, aindex, bindex
q = [[     0,      0,      0]]
count = 0

while q.length > 0
  oldq = q.clone
  # p oldq
  q = []

  oldq.each{|qq|
    nowmin, ai, bi = qq
    q.push([nowmin + a[ai], ai + 1, bi]) if (ai < n && nowmin + a[ai] <= k)
    q.push([nowmin + b[bi], ai, bi + 1]) if (bi < m && nowmin + b[bi] <= k)
  }

  count += 1 if q.length > 0
end

puts count
