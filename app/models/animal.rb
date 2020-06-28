class Animal < ApplicationRecord
  belongs_to :tribe
  self.inheritance_column = :race

  scope :lions, -> { where(race: 'Lion') }
  scope :meerkats, -> { where(race: 'Meerkat') }
  scope :wildboars, -> { where(race: 'Wildboar') }

  def self.races
    %w(Lion Wildboar Meerkat)
  end

  def talk
    raise 'Abstract Method'
  end
end
