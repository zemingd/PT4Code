#encoding:utf-8 No.0002 2014.10.6
while gets
  a,b = $_.split.map{|item| item = item.to_i}
  puts (a+b).to_s.length
end