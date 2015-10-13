def sum(val = 0)
  val.to_s.split('').map(&:to_i).reduce(:+)
end

puts "sum(23324) = #{sum(233_24)}"
puts "sum('asd23ads343') = #{sum('asd23ads343')}"
puts "sum(:asd2387asd879) = #{sum(:asd2387asd879)}"
puts "sum = #{sum}"
