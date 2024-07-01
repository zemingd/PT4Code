def q(s)
[?+,?-].each{|i|[?+,?-].each{|j|[?+,?-].each{|k|
  s[1]=i
  s[3]=j
  s[5]=k
  return s+"=7".to_s if eval(s)==7
}}}
end
puts q(gets.chop.chars*" ")
