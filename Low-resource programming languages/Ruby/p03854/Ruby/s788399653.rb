#!/usr/bin/env ruby
T = ['dream', 'dreamer', 'erase', 'eraser']
t = T.map{|term| term.reverse }
#   ["maerd", "remaerd", "esare", "resare"]
S = STDIN.readline().strip
s = S.reverse!
def check(s, t)
  while s != '' do
    m = t.find{|term| match_term(s, term)}
    return false if m.nil?
    s = remove_term(s, m)
  end
  return true
end
def match_term(s, term)
  s =~ /^#{term}/
end
def remove_term(s, term)
  s.slice(term.length..-1)
end
puts "#{check(s, t) ? 'YES' : 'NO'}"
