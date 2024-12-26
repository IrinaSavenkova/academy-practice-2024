loop do
  
  students = File.open("students.txt", 'r').readlines
  result = []

  print "Введите возраст: "
  input_age = gets.chomp
  if input_age == '-1'
    puts File.read("result.txt")
    break
  end

  students.each_with_index do |student, index| 
    if student.include? input_age
      result.push(student)
      students[index] = nil
    end
  end

  File.open("result.txt", "a") do |file|
    file.puts(result)
  end

  students = students.compact

  File.open("students.txt", "w") do |file|
    file.puts(students)
  end

  if students.empty?
    puts File.read("result.txt")
    break
  end
end
