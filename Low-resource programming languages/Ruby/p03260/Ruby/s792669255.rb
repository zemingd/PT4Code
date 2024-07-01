# frozen_string_literal: true

inputs = gets.split.map(&:to_i)

answer = inputs.all?(&:odd?) ? "Yes" : "No"

puts answer
