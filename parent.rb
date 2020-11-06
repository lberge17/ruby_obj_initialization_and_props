require "pry"
class Parent
    # name, children
    attr_reader :children

    @@all = []

    def initialize(name)
        @name = name
        @children = []

        @@all << self
    end

    def self.all
        @@all
    end

    def have_child(child_name)
        @children << Child.new(child_name)
    end

    def find_child_by_name(child_name)
        # @children.each do |child_instance|
            # if child_name == child_instance.name
            #     return child_instance
            # end
        # end
        @children.find { |child_instance| child_name == child_instance.name }
    end
end

class Child
    # dob, name, allergies
    attr_accessor :name
    attr_reader :dob, :allergies
    @@all = []

    def initialize(name)
        @dob = Time.now
        @name = name
        @allergies = []

        @@all << self
    end

    def self.all
        @@all
    end
end


david = Parent.new("David")
bob = Parent.new("Bob")
hannah = Parent.new("Hannah")
laura = Parent.new("Laura")

laura.have_child("Jitta")
david.have_child("Ari")
david.have_child("Tamar")
bob.have_child("Milton")
bob.have_child("Bernadette")

binding.pry
