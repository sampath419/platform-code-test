require './awards/normal_award.rb'

class BlueFirst < NormalAward
    
    def update_quality
        if expires_in > 0
            @quality = [ 50, @quality += 1 ].min
        else
            @quality = [ 50, @quality += 2 ].min
        end
    end

end