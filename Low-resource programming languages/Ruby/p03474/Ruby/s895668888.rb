A,B,S=`dd`.split
puts S.match(Regexp.new("^\\d{#{A}}-\\d{#{B}}$")) ? "Yes" : "No"