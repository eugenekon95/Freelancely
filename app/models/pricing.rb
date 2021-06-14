class Pricing < ApplicationRecord
  belongs_to :job
  enum pricing_type: [:basic, :standard,:premium]
end
