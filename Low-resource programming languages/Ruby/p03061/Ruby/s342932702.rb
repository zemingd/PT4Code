require 'prime'

class Array
  def to_hash
    result_map = Hash.new
    each do |e|
      result_map[e[0]] = e[1]
    end
    result_map
  end
end

class Hash
  def max_divisor(ary_hash)
    result = Hash.new
    each_pair do |k, v|
      result[k] = [v, ary_hash[k]].min unless ary_hash[k].nil?
    end
    result
  end

  def get_max_divisor
    result = 1
    each_pair do |k,v|
      result *= (k**v)
    end
    result
  end
end

def max(ary)
  hash_ary = ary.map{|i| Prime.prime_division(i).to_hash}
  result = 0
  (0..ary.size-1).each do |skip_idx|
    result_hash = nil
    hash_ary.each_with_index do |val, idx|
      next if idx == skip_idx
      if result_hash.nil?
        result_hash = val
      else
        result_hash = result_hash.max_divisor(val)
      end
    end
    result_tmp = result_hash.get_max_divisor
    result = result_tmp if result_tmp > result
  end
  result
end

gets
ary = gets.split.map(&:to_i)
puts max(ary)
