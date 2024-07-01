n = gets.chomp.to_i
$button = []
n.times do |i|
#100000.times do |i|
  $button << {id:i+1, next:gets.chomp.to_i}
#  $button << {id:i+1, next:nxt}
end

$dp = []
$count = 1
nxt = $button.first
n.times do |i|
  if $dp.include?(nxt[:next])
    puts "-1"
    exit
  else
    if nxt[:next] == 2
      puts $count
      exit
    end
    $dp << nxt[:id]
    $count+=1
    nxt = $button[nxt[:next]-1]
#    f($button[n[:next]-1])
  end
end

#f($button.first)