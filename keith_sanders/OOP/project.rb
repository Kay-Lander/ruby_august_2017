class Project
    attr_reader :name
    attr_reader :description

    def initialize(name, description)
        @name = name
        @description = desc
    end
    def elevator_pitch
        return "#{@name}", "#{@description}"
    end
end

project1 = Project.new("CodeMaster", "Being a Boss at programming!")
puts project1.name
puts project1.elevator_pitch
