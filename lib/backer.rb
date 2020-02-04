class Backer
    
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def projects
        ProjectBacker.all.select do |project|
            project.backer == self
        end
    end

    def backed_projects
        projects.map do |project|
            project.project
        end
    end

end

