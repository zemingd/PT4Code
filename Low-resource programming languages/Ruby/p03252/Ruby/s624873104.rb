require 'set'

S=gets.chomp
T=gets.chomp

used = Set.new
to = {}
from = {}
(?a..?z).each do |c|
  to[c] = c
  from[c] = c
end
S.chars.zip(T.chars).each do |s, t|
  if to[s] == t
    used << t
    next
  end
  if used.include?(to[s]) || used.include?(t)
    puts :No
    exit
  end
  used << t
  ts, ft = to[s], from[t]
  fts = from[ts]
  to[fts], from[t]  = t,  fts
  to[ft],  from[ts] = ts, ft
end
puts :Yes
