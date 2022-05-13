class Sub < ApplicationRecord
    belongs_to :Mod,
        class_name: :User,
        foreign_key: :mod_id
end
