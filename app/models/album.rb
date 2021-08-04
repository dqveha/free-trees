class Album < ApplicationRecord
  scope :rock, -> { where(genre: "Rock") }

  has_many :songs, dependent: :destroy

  has_and_belongs_to_many(:artists)

  validates :name, presence: true

  validates_length_of :name, maximum: 100

  before_save(:titleize_album)

  def self.rock
    where(genre: "Rock")
  end

  private
    def titleize_album
      self.name = self.name.titleize
    end
end

# https://edgeguides.rubyonrails.org/active_record_validations.html