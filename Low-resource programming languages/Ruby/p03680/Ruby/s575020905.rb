if !ENV['RUBY_THREAD_VM_STACK_SIZE']
  exec({'RUBY_THREAD_VM_STACK_SIZE'=>'1000000000'}, '/usr/bin/ruby', $0)
  
n = gets.chomp.to_i
$button = []
#n.times do |i|
  $button << {id:i+1, next:gets.chomp.to_i}
end

$dp = []
$count = 1
def f(n)
  if $dp.include?(n[:next])
    puts "-1"
    exit
  else
    if n[:next] == 2
      puts $count
      exit
    end
    $dp << n[:id]
    $count+=1
    f($button[n[:next]-1])
  end
end

f($button.first)