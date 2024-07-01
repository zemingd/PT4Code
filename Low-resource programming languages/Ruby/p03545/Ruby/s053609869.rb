s=gets.chars
8.times.any?{|b|
e=s.zip(3.times.map{(b[_1]*2+43).chr}).join
eval(e)==7?(puts e+"=7";true):nil
}