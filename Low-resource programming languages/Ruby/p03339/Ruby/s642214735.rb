require 'rbconfig'
STACK_SIZE = 64*1024*1024
if ENV['RUBY_THREAD_VM_STACK_SIZE'].to_i < STACK_SIZE
  ENV['RUBY_THREAD_VM_STACK_SIZE'] = STACK_SIZE.to_s
  exec("#{RbConfig::CONFIG['ruby_install_name']} --disable-gems #{__FILE__}")
end

$wcache = {}
def countw(i)
  $wcache[i] || $wcache[i] = lambda do
    if i == 0
      ($s[i] == 'W' ? 1 : 0)
    else
      ($s[i] == 'W' ? 1 : 0) + countw(i - 1)
    end
  end.()
end

$ecache = {}
def counte(i)
  $ecache[i] || $ecache[i] = lambda do
    if i == $n-1
      ($s[i] == 'E' ? 1 : 0)
    else
      ($s[i] == 'E' ? 1 : 0) + counte(i + 1)
    end
  end.()
end

$n = gets.to_i
$s = gets.chomp.chars

puts 0.upto($n-1).map { |i| countw(i) + counte(i) }.min - 1
