class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        pbArray = ProjectBacker.all.filter{|pb| pb.project == self}
        pbArray.map{|pb| pb.backer}
    end
end