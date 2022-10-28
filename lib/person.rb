class Person
  # your code here
 #attr_accessor :name,:birthday,:hair_color,:eye_color,:height,:weight,:handed,:complexion,:t_shirt_size,:wrist_size,:glove_size,:pant_length,:pant_width
 
 def initialize(attributes)
    attributes.each do |key,value|
      #create a getter and setter by calling the attr_accessor method
      self.class.attr_accessor(key)
         self.send("#{key}=",value)
    end 
  end
end

attributes={name:"Kijana",hair_color:"Mrasta huyu",height:180, birthday:"Sinanga"}
james=Person.new(**attributes)

puts "My name is #{james.name} and my birthday is #{james.birthday}. Height is #{james.height}cm"
