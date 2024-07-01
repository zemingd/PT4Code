$h, $w = gets.split.map(&:to_i)
mat=Array.new($h){gets.chomp.split("")}.transpose

def compression(mat)
  mat.each_with_index do |v,i|
    if v.all?{|a| a=="."}
      mat.delete_at(i)
      compression(mat)
    end
  end
  return mat
end

puts compression(compression(mat).transpose).map(&:join)
