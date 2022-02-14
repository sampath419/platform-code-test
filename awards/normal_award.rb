class NormalAward
    
    attr_reader :expires_in, :quality

    def initialize(expires_in, quality)
        @expires_in = expires_in
        @quality = quality
    end

    def update_expires_in
        @expires_in -= 1
    end

    def update_quality
        if @expires_in > 0
            @quality = [ 0, @quality -= 1 ].max
        else
            @quality = [ 0, @quality -= 2 ].max
        end
    end

end