class Sub < ApplicationRecord
    belongs_to :Mod,
        class_name: :User,
        foreign_key: :mod_id

    has_many :postsubs

    has_many :posts,
    through: :postsubs
end
