module MakeFlaggable
  class Flagging < ActiveRecord::Base
    belongs_to :flaggable, :polymorphic => true
    belongs_to :flagger, :polymorphic => true
    
    attr_accessible :flaggable, :flagger, :reason
  end
end
