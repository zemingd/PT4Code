#!/usr/bin/env ruby
STDIN.readline()
as = []
while (lines = STDIN.gets) do
  as << lines.strip.to_i
end
def make_tree(as, n)
  index = (0...as.size).bsearch{|i| as[i] >=  n} || as.size
  as.insert(index, n)
end
def trained?(as)
  # puts "as: #{as}"
  s = []
  l = 1
  while true
    make_tree(s, l)
    l = as[l-1]
    # puts "#{s}, #{l}"
    return s.length if l == 2
    return nil if s.bsearch{|n| n == l}
  end
end

n = trained?(as)
puts "#{n ? n : -1}"
