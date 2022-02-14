require './awards/normal_award.rb'

class BlueStar < NormalAward
    
    def update_quality
        if @expires_in > 0
            @quality = [ 0, @quality -= 2 ].max
        else
            @quality = [ 0, @quality -= 4 ].max
        end
    end

end