class Comment < ActiveRecord::Base
   attr_accessible :t
   validates :t, presence: true

   default_scope order: 'created_at DESC'
end
