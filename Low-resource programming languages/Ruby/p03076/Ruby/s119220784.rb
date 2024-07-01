input = Array.new(5){gets.to_i}
ans = []

def calc(w)
  tmp = w%10
  return tmp==0 ? 0 : (10-tmp)
end

input.permutation(5).to_a.each do |ary|
  ans << ary.inject([]) {|memo, w|
    memo + [w, calc(w)]
  }[0..-2].map.inject(:+)
end

p ans.min