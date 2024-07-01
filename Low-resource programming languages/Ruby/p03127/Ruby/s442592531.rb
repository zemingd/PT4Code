RubyVM::InstructionSequence.compile_option = {
  :tailcall_optimization => true,
  :trace_instruction => false
}

RubyVM::InstructionSequence.new(<<-EOS).eval
  def gcd(a,b)
    if a == b
      a
    elsif a < b
      gcd(a, b - a)
    else
      gcd(a - b, b)
    end
  end
EOS

n = gets.to_i
ary = gets.split.map(&:to_i)

p ary.reduce { |a,b| gcd(a,b) }
