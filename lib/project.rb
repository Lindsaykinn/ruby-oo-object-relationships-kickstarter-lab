class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        backed_proj = ProjectBacker.all.select {|back_proj| back_proj.project == self}
  
        backed_proj.map {|back_proj| back_proj.backer}
      end
end


