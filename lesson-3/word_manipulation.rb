

  def word_manipulation(word)
    new_word = word
    word_length = word.length
    word = word.downcase.lstrip
    if(word.end_with?("cs"))
    
      puts 2 ** word_length
    
    else
      puts new_word.reverse
    end
    
    
  end



  print "Введите любое слово: "
  input_word = gets.to_s.chomp
  word_manipulation(input_word)
  
  
