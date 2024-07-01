require 'bigdecimal'
if true then
  fh=STDIN
else
  fh=open("in0015.txt")
end
n = fh.gets.chomp.to_i
0.upto(n-1){|i|
  x1 = BigDecimal.new(fh.gets.chomp)
  if log10(x1)>80 then
    puts "overflow"
    continue
  end

  x2 = BigDecimal.new(fh.gets.chomp)
  if log10(x2)>80 then
    puts "overflow"
    continue
  end
  x3 = x1+x2
  puts "overflow" if log10(x3)>80
  printf("%d\n", x3.to_i)
}