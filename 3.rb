def name
  full_name = ''
  prompt = ['Enter your Name: ',
            'Enter your Middle Name: ',
            'Enter your Family Name: ']
  (1..3).each do |i|
    print prompt[i - 1]
    input = gets.chomp
    full_name += input + ' '
  end
  "Hello #{full_name.rstrip}!"
end

puts name
