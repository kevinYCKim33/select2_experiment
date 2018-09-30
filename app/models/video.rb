class Video < ApplicationRecord
  has_many :video_genres
  has_many :genres, through: :video_genres

  #NO NEED TO WRITE GENRE_IDS WRITER METHOD! ITS A BUILT IN ACTIVE RECORD METHOD
  #NO NEED TO LOOP THROUGH AND CHECK TO SEE IF IT'S INCLUDED
  # GENRE IDS IS A VERY CLUTCH NAME IT TURNS OUT

  # def genre_ids=(ids)
  #   # binding.pry
  #   # ids.each do |id|
  #   #   genre = Genre.find(id)
  #   #   binding.pry
  #   #   if self.genres.includes?
  #   #   self.genres << genre
  #   # end
  #
  # end
end
