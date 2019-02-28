class Person
  attr_accessor :name, :birthday, :hair_color, :eye_color, :height, :weight, :handed, :complexion, :t_shirt_size, :wrist_size, :glove_size, :pant_length, :pant_width

  @@all = []

  def initialize(person_hash)
    person_hash.each do |key_symbol, value_string|
      self.send("#{key_symbol}=", value_string)
    end
    @@all << self
  end
end
