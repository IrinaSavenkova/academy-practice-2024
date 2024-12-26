class File

  def index
  
    return self.read
    
  end

  def find(id)
    array = self.read.split("\n")
    return array[id - 1]
  end

  def where(pattern)
    array = self.read.split("\n")
    array_result = []
    array.each do |line| 
      array_result.push(line) if line.include? pattern
    end
    return array_result
  end
   
 def update(id, text)
  array = self.read.split("\n")
  array[id-1] = text
  self.truncate(0)

  array.each do |line|
    self.write(line + "\n")
  end 

 end

def delete(id)
  array = self.read.split("\n")
  array[id-1] = nil
  array = array.compact
  puts array
  self.truncate(0)
  
  array.each do |line|
    self.write(line + "\n")
  end

end

def create(name)
  self.write(name + "\n")
end

  
end




