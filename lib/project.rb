class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(back_inst)
        ProjectBacker.new(self, back_inst)
    end
end