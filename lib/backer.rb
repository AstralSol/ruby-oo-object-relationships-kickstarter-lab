class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project) # instance mthod that accepts a project as an argument
        ProjectBacker.new(project, self) # an creates a ProjectBacker, associating prkect wit said backer
    end

    def backed_projects  # returns an array of projects associated with this Backer instance
        project_backers = ProjectBacker.all.select do |projb|
            projb.backer == self
        end
        project_backers.map do |projb|
            projb.project
        end
    end
end