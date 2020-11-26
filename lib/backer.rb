class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self) 
    end

    def backed_projects
      project_backers = ProjectBacker.all.select {|projback| projback.backer == self}

      project_backers.map {|projback| projback.project}
    end
end