# to use condictions in ruby, we can say that it will be equal for others languagas
# like Python,C++,Java
puts false && true
puts false || true
puts false || !true
valor = gets.chomp.to_s
if valor.to_s.downcase == 'true'
  puts 'So you chosed true hmmm'
elsif valor.to_s.downcase == 'false'
  puts 'So you prefered false'
end

# we can use use too Switch case
case valor.to_s.downcase
when 'true'
  puts 'I puted true using switch case'
when 'false'
  puts 'I pumed false using switch case'
else
  puts 'You chosed a non option avaliable'
end
