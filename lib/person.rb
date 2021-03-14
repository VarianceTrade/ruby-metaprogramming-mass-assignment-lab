class Person
  @@valid_attributes = [:name, :birthday, :hair_color, :eye_color, :height, 
    :weight, :handed, :complexion, :t_shirt_size, 
    :wrist_size, :glove_size, :pant_length, :pant_width]
    
  def initialize(attributes)
    attributes.each do |key, value|
      if (@@valid_attributes.include?(key))
        self.class.attr_accessor(key)
        self.send(("#{key}="), value)
      end
    end
  end
end