require 'prime'
include Math
$n = gets.to_i
$prime = 2
$tmp1 = $n
$tmp2 = 1
$sq = log10($n)
=begin
R = RubyVM::InstructionSequence
R.compile_option = {tailcall_optimization: true, trace_instruction: false}
R.new(<<~EOS).eval

def culc
	if $n % $prime == 0
		$tmp1 = $n / $prime
		$tmp2 = $prime
		return $tmp2 if log10($tmp1) <=  log10($tmp2)
	end
	$prime += 1
	if  log10($prime) >=  $sq
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
loop {
  if $n % $prime == 0
    $tmp1 = $n/$prime
    $tmp2 = $prime
    break if $tmp1.to_s.length <= $tmp2.to_s.length || log10($prime) >=  $sq
  end
  $prime += 1
}
	puts log10($tmp2).to_i+1
end