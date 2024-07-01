#!/usr/bin/env ruby
T = ['dream', 'dreamer', 'erase', 'eraser']
t = T.map{|t| t.reverse }
#   ["maerd", "remaerd", "esare", "resare"]
S = STDIN.readline().strip
s = S.reverse
def check(s, t)
  return true if s == ''
  m = t.find{|t| match_term(s, t)}
  return false if m.nil?
  check(remove_term(s, m), t)
end
def match_term(s, term)
  s =~ /^#{term}/
end
def remove_term(s, term)
  s.slice(term.length..-1)
end
str = check(s, t) ? 'YES' : 'NO'
puts "#{str}"
