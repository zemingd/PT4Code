N = gets.to_i
a = gets.chomp.split("")
ret = 0
s = ""
a.each { |str|
  if str != s
    ret += 1
  end
  s = str
}
puts ret