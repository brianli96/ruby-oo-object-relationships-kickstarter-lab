class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(back_inst)
        ProjectBacker.new(self, back_inst)
    end

    def backers
        array = ProjectBacker.all.select do |pb|
          pb.project == self
        end
        array.map do |pb|
          pb.backer
        end
  end
end