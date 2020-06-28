class Tribe < ApplicationRecord
  has_many :animals
  # delegate :lions, :meerkats, :wild_boars, to: :animals
  delegate :lions, :meerkats, :wildboars, to: :animals

end
