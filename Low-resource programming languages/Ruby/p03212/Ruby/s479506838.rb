N = gets.chomp.to_i
NUM_CHARS = %w{3 5 7}

def dfs(num_str)
  return 0 if num_str.to_i > N

  is_ngs = NUM_CHARS.all? { |n| num_str.include? n }
  NUM_CHARS.inject(is_ngs ? 1 : 0) do |sum, n|
    sum + dfs(num_str + n)
  end
end

puts dfs("")
