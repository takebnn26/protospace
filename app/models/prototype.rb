class Prototype < ApplicationRecord
  enum content_type: { main: 0, sub: 1}
end
