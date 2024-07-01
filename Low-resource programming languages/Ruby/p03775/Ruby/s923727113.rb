$n = gets.to_i
$prime = 2
$tmp1 = $n
$tmp2 = 1
R = RubyVM::InstructionSequence
R.compile_option = {tailcall_optimization: true, trace_instruction: false}
R.new(<<~EOS).eval

def culc
	if $n % $prime == 0
		$tmp1 = $n / $prime
		$tmp2 = $prime
		return $tmp2 if $tmp1.to_s.length <= $tmp2.to_s.length
	end
	$prime += 1
	if $prime.to_s.length >= $n.to_s.length
		return $n
	else
		return culc
	end
end

EOS
puts culc.to_s.length
