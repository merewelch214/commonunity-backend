class User < ApplicationRecord
    has_many [:check_ins, :posts, :safety_concerns]
end
