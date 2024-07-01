require 'rbconfig'
STACK_SIZE = 64*1024*1024
if ENV['RUBY_THREAD_VM_STACK_SIZE'].to_i < STACK_SIZE
  ENV['RUBY_THREAD_VM_STACK_SIZE'] = STACK_SIZE.to_s
  exec("#{RbConfig::CONFIG['ruby_install_name']} --disable-gems #{__FILE__}")
end

$cache = {}

def count(c, i, j)
  if $cache[[c, i, j]]
    $cache[[c, i, j]]
  else
    $cache[[c, i, j]] = lambda do
      if i == j
        if $s[i] == c then 1 else 0 end
      else
        (if $s[i] == c then 1 else 0 end) + count(c, i+1, j)
      end
    end.()
  end
end

n = gets.to_i
$s = gets.chomp.chars

puts 0.upto(n-1).map { |i| count('W', 0, i) + count('E', i, n-1) }.min - 1
