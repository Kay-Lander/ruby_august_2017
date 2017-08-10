class Project
    attr_accessor :name, :description, :owner, :tasks

    def initialize(name, description, owner )
        @name = name
        @description = description
        @owner = owner
        @tasks = []
    end
    def add_tasks(str)
        tasks <<  str 
    end
    def elevator_pitch
        return "#{@name}, #{@description}"
    end
end


