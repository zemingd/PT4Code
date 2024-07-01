
s = gets.chop
q = gets.to_i

is_reverse = false
before = ""
after = ""

Array.new(q).map { gets.split(" ") }.each do |t, f, c|
  if t == "1"
    is_reverse = !is_reverse
  else
    if f == "1"
      unless is_reverse
        before = c + before
      else
        after = after + c
      end
    else
      unless is_reverse
        after = after + c
      else
        before = c + before
      end
    end
  end
end

if is_reverse
  s = s.reverse
  before, after = after.reverse, before.reverse
end

puts before + s + after
