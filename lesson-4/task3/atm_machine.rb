balance = File.open("balance.txt").read.to_f

loop do
  print "Доступные операции: 
D - Внести деньги 
W - Вывести деньги 
B - Проверить баланс 
Q - Выйти \n"

operation = gets.chomp.upcase

case operation

when 'D'
  print "Введите сумму, кратную 10: "
  sum = gets.chomp.to_f
  if sum % 10 == 0 && sum > 0
    balance += sum
    File.open("balance.txt", "w").puts(balance)
    puts "Успешно"
  elsif(sum < 0)
    puts "Сумма должна быть больше 0"
  else
    puts "Сумма должна быть кратной 10"
  end

when 'W'
print "Введите сумму, которую хотите вывести:  "
  sum = gets.chomp.to_f
  if sum > 0 && sum <= balance
    balance -= sum
    File.open("balance.txt", "w").puts(balance)
    puts "Успешно"
  elsif(sum <= 0)
    puts "Для вывода сумма должна  быть больше 0"
  else
    puts "Для вывода сумма должна не превышать баланс"
  end

when 'B'
  puts "Ваш баланс: #{balance}"

when 'Q'
  return
end


end