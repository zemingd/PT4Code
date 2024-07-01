h, w = gets.split.map(&:to_i)
mat=Array.new(h){gets.chomp.split("")}.transpose
 
def compression(mat)
  mat.each do |v|
    if v.all?{|a| a=="."}
      mat.delete(v)
      compression(mat)
    end
  end
  return mat
end

puts compression(compression(mat).transpose).map(&:join)