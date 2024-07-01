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

n,m = csi
a = csi
n = n-1

ans = []

(1..m).to_a.select{|i|n%5==0}.each do |i|
  (0..n-1).to_a.select{|i|n%2==0}.each do |ii|
    if (i/ii.to_f-0.5) > 0 && (i/ii.to_f-0.5)%1==0
      ans.push(i)
    end
  end
end

puts ans.length
