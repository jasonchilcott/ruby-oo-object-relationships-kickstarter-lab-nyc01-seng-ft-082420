class Backer
    
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end  
    
    def self.all
        @@all
    end
    
    def back_project(project)
        ProjectBacker.new(project, self)
    end    

    def backed_pb
        ProjectBacker.all.select { |pb| pb.backer == self }
    end
    
    def backed_projects
        self.backed_pb.map { |p| p.project }
    end
    
end    