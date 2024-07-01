N, M, K = gets.split.map(&:to_i)
As = gets.split.map(&:to_i)
Bs = gets.split.map(&:to_i)

k = K

seltimes = []
while k > 0 do
  atime = As.first
  btime = Bs.first
  break if atime.nil? && btime.nil?
  seltime = if atime.nil?
    Bs.shift
  elsif btime.nil?
    As.shift
  else
    if atime < btime
      As.shift
    else
      Bs.shift
    end
  end
  k = k - seltime
  seltimes << seltime if k >=0
  # puts "k=#{k}, atime=#{atime}, btime=#{btime}, seltimes=#{seltimes}"
end 

puts seltimes.size