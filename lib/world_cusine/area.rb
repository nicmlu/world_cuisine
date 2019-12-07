class WorldCusine::Area

    attr_accessor :strArea

    @@all = []

    def initialize(args)
        args.each {|k,v|self.send("#{k}=", v)}
        @@all.push(self)
    end

    def self.all
        @@all
    end

end