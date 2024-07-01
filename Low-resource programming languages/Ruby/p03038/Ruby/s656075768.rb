N,M=gets.split.map(&:to_i)
AS=gets.split.map(&:to_i)
BCS=M.times.map { gets.split.map(&:to_i) }

AS = AS.sort
BCS = BCS.sort {|a,b| a[1] <=> b[1]}.reverse

origin = 0
BCS.each do |bs|
  bs[0].times do
    if bs[1] > AS[origin] 
      AS[origin] = bs[1]
      origin+=1
    end
  end
end

p AS.inject(:+)
