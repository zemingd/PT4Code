s = gets
@ans = []

def head_matches(str)
  words = %w[dream dreamer erase eraser]
  array = []
  words.each do |w|
    array += str.scan(/^#{w}/)
  end
  array
end

def aaaa(str, a)
  removed_string = str.gsub(/^#{a}/, '')
  if removed_string.size.zero?
    @ans += [true]
    return
  end
  ms = head_matches(removed_string)
  ms.each do |m|
    aaaa(removed_string, m)
  end
end

head_matches(s).map do |a|
  aaaa(s, a)
end

puts @ans.include?(true) ? 'YES' : 'NO'
