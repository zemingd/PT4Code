LIMIT = 1e-10
n = gets.to_i
n.times{
  arr = gets.split.map(&:to_f)
  ab = [arr[2] - arr[0], arr[3] - arr[1]]
  rab = Math.sqrt(ab[0]**2 + ab[1]**2)
  ab = [ab[0]/rab, ab[1]/rab]
  cd = [arr[6] - arr[4], arr[7] - arr[5]]
  rcd = Math.sqrt(cd[0]**2 + cd[1]**2)
  cd = [cd[0]/rcd, cd[1]/rcd]
  if ((ab[0] - cd[0]).abs < LIMIT && (ab[1] - cd[1]).abs < LIMIT) || ((ab[0] + cd[0]).abs < LIMIT && (ab[1] + cd[1]).abs < LIMIT)
    puts "YES"
  else
    puts "NO"
  end
}