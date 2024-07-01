N = gets.chomp.to_i
A = gets.chomp.split(' ').map(&:to_i)

temp = []
av = []
A.each do |a|
  if temp.include?(a)
    temp.delete(a)
    if av.length < 2
      av.push a
    else
      av.each do |i|
        if i < a
          av.delete(i)
          av.push a
          break
        end
      end
    end
  else
    temp.push a
  end
end

def calc(arr)
  f, s = arr.max(2)
  f * s
end

if av.length > 1
  print calc(av)
else
  print '0'
end