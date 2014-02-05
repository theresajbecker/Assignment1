Ruby_Assignment.rb
#Theresa Becker

# Part1: Hello World
class HelloWorldClass #  Opens the class HelloWorldClass
    def initialize(theresa) # creates a method within the class called initialize that takes the parameter 'name'
       @name = name.capitalize # creates the instance variable 'name' 
    end # ends the initilaize method
    def sayHi #creates the method sayHi
        puts "Hello #{@name}!" #puts (prints with a space after the print) 'Hello, (name). the #{@name} inserts the value of the instance variable name. 
    end # ends the sayHi method
end #closes the HelloWorldClass
hello = HelloWorldClass.new("{theresa.becker}") #creates a local variable 'hello' that belongs to the class HelloWorldClass
hello.sayHi #calls the method sayHi on the 'hello'
