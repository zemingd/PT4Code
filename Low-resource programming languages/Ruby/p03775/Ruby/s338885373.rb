require 'prime'
include Math
$n = gets.to_i
$prime = 2
$tmp1 = $n
$tmp2 = 1
$sq = sqrt($n)
=begin
R = RubyVM::InstructionSequence
R.compile_option = {tailcall_optimization: true, trace_instruction: false}
R.new(<<~EOS).eval

def culc
	if $n % $prime == 0
		$tmp1 = $n / $prime
		$tmp2 = $prime
		return $tmp2 if $tmp1 <= $tmp2
	end
	$prime += 1
	if $prime >=  $sq
		return $n
	else
		return culc
	end
end

EOS
=end
if Prime.prime?($n)
	puts log10($n).to_i+1
else
1.upto($sq + 1000000) do |prime|
  if $n % prime == 0
    $tmp1 = $n/prime
    $tmp2 = prime
    break if $tmp1 <= $tmp2
  end
end
	puts log10($tmp2).to_i+1
end