class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(proj_inst)
        ProjectBacker.new(proj_inst, self)
    end

    def backed_projects
        projects_backed = ProjectBacker.all.select do |proj_back|
            proj_back == self
        end
        projects_backed.map do |proj_back|
             proj_back.project
        end
    end
end