def foobar(number_1, number_2)
  if(number_1==20||number_2==20)
      return number_2
  else
    return number_1+number_2    
  end
end

print "Первое число: "
number_1 = gets.to_i
print "Второе число: "
number_2 = gets.to_i

puts foobar(number_1, number_2)