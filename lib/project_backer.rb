class ProjectBacker
    attr_reader :project, :backer
    @@all = []

    def initialize(proj_inst, back_inst)
        @project = proj_inst
        @backer = back_inst
        @@all << self
    end

    def self.all
        @@all
    end

end