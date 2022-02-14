require './awards/blue_compare.rb'
require './awards/blue_distinction_plus.rb'
require './awards/blue_first.rb'
require './awards/blue_star.rb'

class Award
    
    attr_reader :expires_in, :quality

    def initialize(name, expires_in, quality)
        @award_type = award_type(name, expires_in, quality)
        @expires_in = expires_in
        @quality = quality
    end

    def award_type(name, expires_in, quality)
        case name
        when 'Blue Star'
            BlueStar.new(expires_in, quality)
        when 'Blue First'
            BlueFirst.new(expires_in, quality)
        when 'Blue Distinction Plus'
            BlueDistinctionPlus.new(expires_in, quality)
        when 'Blue Compare'
            BlueCompare.new(expires_in, quality)
        else
            NormalAward.new(expires_in, quality)
        end
    end

    def update
        @quality = @award_type.update_quality
        @expires_in = @award_type.update_expires_in
    end

end