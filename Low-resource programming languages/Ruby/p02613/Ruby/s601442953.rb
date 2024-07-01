N = $stdin.gets.to_i
S = {
  'AC' => 0,
  'WA' => 0,
  'TLE' => 0,
  'RE' => 0,
}
0.upto(N - 1) do |i|
  w = $stdin.gets.strip
  S[w] += 1
end
[ 'AC', 'WA', 'TLE', 'RE' ].each do |w|
  puts "#{w} x #{S[w]}"
end
