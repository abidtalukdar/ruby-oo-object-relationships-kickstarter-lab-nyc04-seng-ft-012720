class Project
    
    attr_reader :title


    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)

    end

    def projects
        ProjectBacker.all.select do |project|
            project.project == self
        end
    end

    def backers
        projects.map do |project|
            project.backer
        end
    end

end
