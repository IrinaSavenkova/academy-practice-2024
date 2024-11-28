def greeting (name, surname, age)
  if age<18
  puts "Привет, #{name} #{surname}. Тебе меньше 18 лет, но начать учиться программировать никогда не рано"
  
  else
    puts "Привет, #{name} #{surname}. Самое время заняться делом!"
  end

end

print "Введите ваше имя: "
input_name = gets.to_s.chomp
print "Введите вашу фамилию: "
input_surname = gets.to_s.chomp
print "Сколько вам полных лет?  "
input_age = gets.to_i

puts greeting(input_name, input_surname, input_age)