class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    Artist.find{|artist| self.artist_id}.name
  end
end
