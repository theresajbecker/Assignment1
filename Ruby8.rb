class Class

    def attr_accessor_with_history(attr_name)

        attr_name = attr_name.to_s       # make sure it's a string
	attr_hist_name = attr_name+"_history"

        attr_reader attr_name            # create the attribute's getter
        attr_reader attr_name+"_history" # create bar_history getter

	self.class_eval %Q{ 
	    def #{attr_name}=(val) 
		@#{attr_hist_name} = [nil] if @#{attr_hist_name}.nil? #creates empty array to store history if the array is not equal to nil
		
		@#{attr_hist_name} << val # puts the value (history) into the array
		@#{attr_name}=val #sets value
		end	#end def
		}
end #ends function
end #ends class

class Foo

    attr_accessor_with_history :bar

end

 
f = Foo.new     # => #<Foo:0x127e678>

f.bar = 3       # => 3

f.bar = :wowzo  # => :wowzo

f.bar = 'boo!'  # => 'boo!'

p f.bar_history   # => [nil, 3, :wowzo, 'boo!']

#worked with Erik K and Alec T



   


