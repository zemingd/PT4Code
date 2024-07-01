n = gets.chomp.to_i
ary_num = gets.chomp.split.map(&:to_i)

class Array
  def uniq?
    uniq_check = {}
    each do |v|
      return false if uniq_check.key? v
      uniq_check[v] = true
    end
    return true
  end
end

if ary_num.uniq?
  puts 'YES'
else
  puts 'NO'
end