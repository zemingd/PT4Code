T = ["dream", "dreamer", "erase", "eraser"]

def solve(s)
  if s.length == 0 then
    return true
  end

  T.each do |word|
    if s.start_with?(word) && solve(s.sub(/#{word}/, ""))then
        return true
    end
  end

  return false
end

s = gets.chomp
puts solve(s) ? "YES" : "NO"
