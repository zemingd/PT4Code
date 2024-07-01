nums = gets.split(' ')
str = []
nums[0].to_i.times {
    str.push(gets)
}
s = ""
str.sort!.each{ |d|
  s = s + d ;
}

puts s