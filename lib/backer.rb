require "pry"
class Backer

attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        list = ProjectBacker.all.select do |x|
            # binding.pry
            x.backer.name == self.name
        end
        list.map { |x| x.project }
    end
end