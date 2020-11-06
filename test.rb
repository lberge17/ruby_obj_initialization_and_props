require "pry"
class Test
    # attr_accessor :name

    def initialize
        @hi = "hello"
        puts "initializing"
    end
end

binding.pry