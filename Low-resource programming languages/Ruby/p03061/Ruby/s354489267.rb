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
  result = 0
  ary.each_with_index do |val, idx|
    ary_tmp = ary.reject.with_index {|n, i| i == idx}

    result_hash = nil
    ary_tmp.each do |n|
      result_ary_tmp = Prime.prime_division(n)
      if result_hash.nil?
        result_hash = result_ary_tmp.to_hash
      else
        result_hash = result_hash.max_divisor(result_ary_tmp.to_hash)
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
