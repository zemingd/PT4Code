# @param [String] x
def solve(x)
  if x.include? '9'
    'Yes'
  else
    'No'
  end
end

unless ENV['SKIP_IO'] == '1'
  x = gets
  puts solve x
end
