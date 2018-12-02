#
# Polymorphism is the concept of writing code that can work with objects of multiple types and classes at once. 
# For example, the + method works for adding numbers, joinging strings and adding arrays together. what + 
# does depends entirely on what type of things you're adding together.
#

class Animal
      attr_accessor :name

      def initialize(name)
          @name = name
      end         
end

class Dog < Animal
 
      def talk
          "Hau! Hau!"
      end
end
  
class Cat < Animal 

      def talk
          "Miau! Miau!"
      end 
end

class Cow < Animal

      def talk
          "Moo! Moo!" 
      end
end

animals = [Cat.new("Perry"), Dog.new("Bucifal"), Cow.new("MooTools")]

animals.each do |animal|
        puts "#{animal.name} " + animal.talk
end
