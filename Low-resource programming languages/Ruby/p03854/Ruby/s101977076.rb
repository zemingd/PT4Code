s = gets.chomp

def delete_candidate_suffix(str)
  return nil if str.nil?
  candidates = %w[dream dreamer erase eraser]
  candidates.each do |c|
    after = str.chomp(c)
    return after if after.size < str.size
  end
  nil
end

loop do
  s = delete_candidate_suffix(s)
  if s.nil?
    puts 'NO'
    exit 0
  elsif s.empty?
    puts 'YES'
    exit 0
  end
end
