require './awards/award.rb'

def update_quality(awards)
  awards.each do |award|
    award.update
  end
end
