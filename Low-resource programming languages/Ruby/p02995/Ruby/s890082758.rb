io = STDIN
a,b,c,d=io.gets.split.map(&:to_i)
#1,..,a-1,a,...b
def cnt(to,c,d)
  to-(to/c+to/d-to/(c.lcm d))
end
p cnt(b,c,d)-cnt(a-1,c,d)
