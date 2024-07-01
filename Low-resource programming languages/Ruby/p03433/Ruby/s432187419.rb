require 'stringio'
io = StringIO.new(STDIN.read)
io.each_slice(2) do |l1, l2|
  target = Integer(l1)
  coins  = Integer(l2)
  puts target.modulo(500) <= coins ? 'Yes' : 'No'
end
