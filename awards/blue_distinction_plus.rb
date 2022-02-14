require './awards/normal_award.rb'

class BlueDistinctionPlus < NormalAward
    
    def update_quality
        @quality = 80
    end

    def update_expires_in
        @expires_in = @expires_in
    end

end