require './awards/normal_award.rb'

class BlueCompare < NormalAward
    
    def update_quality
        if expires_in <= 0
            @quality = 0
        elsif expires_in > 10
            @quality = [ 50, @quality += 1 ].min
        elsif expires_in <= 10 && expires_in > 5
            @quality = [ 50, @quality += 2 ].min
        elsif expires_in <= 5 && expires_in > 0
            @quality = [ 50, @quality += 3 ].min
        end
    end
    
end