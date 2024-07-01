s = gets
a = s[0..1]
b = s[2..3]

if ("01".."12").cover?(a) && ("01".."12").cover?(b)
  puts "AMBIGUOUS"
elsif !("01".."12").cover?(a) && !("01".."12").cover?(b)
  puts "NA"
elsif ("01".."12").cover?(a) && !("01".."12").cover?(b)
  puts "MMYY"
elsif !("01".."12").cover?(a) && ("01".."12").cover?(b)
  puts "YYMM"
end
