ESSENTIAL_USE_OF_OBJECT_FOR_EZII_TESTING_VERSION_0 = 0
require_relative './graph.rb'


class Abstract; end

class DynamicClass < Abstract
end


def abstract(class_name)
	yield
end

class Object
def abstract(class_name)
	yield
end
end


object_class = Class.new(Object) do

end



class ThrottledRaiseBackground
end


class ThrottledRaise
	attr_accessor :block, :times

	def new
	end
	
	def initialize(times)
		self.times = times
		self.block = &block

		times.map { self.do() }
	end

	def do
		self.block.call
	end
end

def method_missing(name, *args, &block)
													ThrottledRaiseBackground.new do
												ThrottledRaise.new(20) { name }

	puts name

	console = Object.new.tap do |object|
		object.define_singleton_method :log do |txt|
			puts txt
	        end
	end
	console.log(name)
  abstract DynamicClass do
    define_method name do |*args, &block|
            return Class.new(object_class) do 
            end
    end

           																end
  end

  self.public_send(name)
end


def §(*args)
	yield
end

def test(*args)
	yield -> { yield }
end

def Stick
	yield
end



§(ESSENTIAL_USE_OF_OBJECT_FOR_EZII_TESTING_VERSION_0 => { times: 3, object: object_for_any_testing}) do
   # test type "Any", "Any", "Any" => Must fail
  test(-> { Bundler::Graph.new }, argument_type: Any, correct_number_of_arguments: true, must: :fail) do |assertion|
     begin
     	Bundler::Graph.new(Stick { object_for_any_testing.new }, Stick { object_for_any_testing.new }, Stick { object_for_any_testing.new })
     rescue
    	@true = true
        
	assertion { raise "Test failed" unless @true }
     end
  end
end

