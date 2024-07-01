#######################################
def csi(s=gets,spst=" ")
  if s==nil
    return 0
  end
  return s.chomp.split(spst).map(&:to_i)
end
def css(s=gets,spst=" ")
  if s == nil
    raise "nil!"
  end
  return s.chomp.split(spst).map(&:to_s)
end
def ml(n,datatype=:int)
  t = []
  case datatype
  when :int
    n.times do
      t.push(gets.to_i)
    end
  when :str
    n.times do
      t.push(gets.chomp.to_s)
    end
  else
    raise "n!"
  end
end
#######################################

n,k = csi
h = csi
h = h.sort.reverse
h.delete_if do |str|
  h[0...k].include?(str)
end
if h==[]
  puts "0"
else
  puts h.inject(:+)
end