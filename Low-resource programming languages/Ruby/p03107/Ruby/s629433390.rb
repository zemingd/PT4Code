# util functions

# debug
$debugFlag = ( ARGV[0] != nil )
p "==== DEBUG MODE ====" if $debugFlag

# input
inputs = []
lc = 0
while l = $stdin.gets do
  if true
    inputs << l.chomp.split(" ").map(&:to_s)
  else
    inputs << l.chomp.split(" ").map(&:to_i)
  end
  lc += 1
end

# input check
if $debugFlag
  p "--- INPUT (begin) ---"
  inputs.each do |l_i|
    p l_i
  end
  p "--- INPUT (end) ---"
  print "\n"
end

# body
$ss = inputs[0][0]
if $debugFlag
  p $ss
end

$hash = {}
def recurse( str )
  p str if $debugFlag
  return $hash[str] if $hash[str] != nil
  return [0, ""] if str == ""
  return [2, ""] if str == "01" or str == "10"
  case str
  when "101" then
    return [2, "1"]
  when "010" then
    return [2, "0"]    
  when "110" then
    return [2, "1"]    
  when "011" then
    return [2, "1"]    
  when "100" then
    return [2, "0"]        
  when "001" then
    return [2, "0"]        
  end
  return [0, str] if str.index("0") == nil or str.index("1") == nil

  i = str.index("10")
  if i == 0
    lres  = [0, ""]
    rres  = recurse( str[i+2..-1] )
  elsif i != nil
    lres  = recurse( str[0..i-1] )
    rres  = recurse( str[i+2..-1] )
  else
    i = str.index("01")
    if i == 0
      lres  = [0, ""]
      rres  = recurse( str[i+2..-1] )
    else
      lres  = recurse( str[0..i-1] )
      rres  = recurse( str[i+2..-1] )
    end
  end
    
  # lres  = recurse( str[0..str.length/2-1] )
  # rres  = recurse( str[str.length/2..-1] )

  if $debugFlag
    print "lres: "
    p lres
    print "rres: "
    p rres    
  end

  num   = lres[0] + rres[0] + 2
  cres  = recurse( lres[1] + rres[1] )
  num  += cres[0]
  redstr = cres[1]
  res = [num, redstr]
  $hash[str] = res
  return res
end

puts recurse( $ss )[0]

# while $ss.size >= 3 or $ss == "01" or $ss == "10"
#   if $debugFlag
#     print "ss: "
#     p $ss
#   end
  
#   if $ss == "01" or $ss == "10"
#     cnt += 2
#     break
#   end

#   ($ss.size - 2).times do |i|
#     case $ss[i..i+2]
#     when "101" then
#       $ss[i..i+2] = "1"; cnt += 2
#     when "010" then
#       $ss[i..i+2] = "0"; cnt += 2
#     when "110" then
#       $ss[i..i+2] = "1"; cnt += 2
#     when "011" then
#       $ss[i..i+2] = "1"; cnt += 2
#     when "100" then
#       $ss[i..i+2] = "0"; cnt += 2
#     when "001" then
#       $ss[i..i+2] = "0"; cnt += 2
#     end
#   end
# end
# puts cnt
