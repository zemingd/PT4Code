t = gets.chomp.split("")
$count = 0
$result = []

t.each do |n|
  if n =~ /[ACGT]/
      $count += 1
  else
      $result.push($count)
      $count = 0
  end
end

puts $result.max