class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer) # is an instance method that accepts a backer as an argument and creates
        ProjectBacker.new(self, backer) # a ProjectBacker, associating this project with ths backer
    end

    def backers  # returns an array of backers asssociated with this Project instance
        project_backers = ProjectBacker.all.select do |projb|
            projb.project == self
        end
        project_backers.map do |projb|
            projb.backer
        end
    end
end