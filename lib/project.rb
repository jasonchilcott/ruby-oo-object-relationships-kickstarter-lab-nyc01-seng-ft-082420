class Project
    
    attr_accessor :title

    @@all =[]

    def initialize(title)
        @title = title
        @@all << self
    end
    
    def self.all
        @@all
    end
    
    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def find_pb
        ProjectBacker.all.select { |pb| pb.project == self }
    end
    
    def backers
        self.find_pb.map { |p| p.backer }
    end    
    
end    