#!/usr/bin/env ruby
STDIN.readline()
as = []
while (lines = STDIN.gets) do
  as << lines.strip.to_i
end
def trained?(as)
  # puts "as: #{as}"
  s = []
  l = 1
  while true
    s << l
    l = as[l-1]
    # puts "#{s}, #{l}"
    return nil if s.include?(l)
    return s.length if l == 2
  end
end

n = trained?(as)
puts "#{n ? n : -1}"
