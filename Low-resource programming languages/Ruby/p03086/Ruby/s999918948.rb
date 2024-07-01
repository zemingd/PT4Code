PAT = /([ACGT]+)/
PAT.freeze

STDIN.each do |line|
  match = PAT.match(line)
  if match.nil?
    STDOUT.puts 0
  else
    STDOUT.puts match.captures.map{|s| s.size}.max
  end 
end