class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        list = ProjectBacker.all.select do |x|
            x.project.title == self.title
        end
        list.map { |x| x.backer }
    end
end