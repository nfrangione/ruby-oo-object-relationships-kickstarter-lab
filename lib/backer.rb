class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        pbArray = ProjectBacker.all.filter{|pb| pb.backer == self}
        pbArray.map{|pb| pb.project}
    end
end