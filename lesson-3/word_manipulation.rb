def word_manipulation(word)
    
  if(word.strip.downcase.end_with?("cs"))
    
    puts 2 ** word.length
    
  else
    puts word.strip.reverse
  end
    
end

print "Введите любое слово: "
input_word = gets.chomp
word_manipulation(input_word)
  
  
