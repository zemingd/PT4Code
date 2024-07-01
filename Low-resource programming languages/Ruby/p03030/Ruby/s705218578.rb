N = gets.to_i
SP = N.times.map { |i| gets.split + [i+1] }

SP.group_by { |sp| sp[0] }.sort_by { |sp| sp[0] }.each do |name, sp|
  sp.sort_by { |sp| -sp[1].to_i }.each do |sp|
    puts sp[2]
  end
end
