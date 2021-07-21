class AttrAccessorObject
  def self.my_attr_accessor(*names)
    names.each do |name|
      define_method(name) do
        variable_get("@#{name}")
      end

      define_method("#{name}=") do |val|
        set_variable("@#{name}", val)
      end
    end

    
  end
end
