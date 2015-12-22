module MakeFlaggable
  class Flagging < ActiveRecord::Base
    belongs_to :flaggable, :polymorphic => true
    belongs_to :flagger, :polymorphic => true

    # attr_accessible :flaggable, :flagger, :reason
    scope :with_the_flag, lambda { |flag| where(:reason => flag.to_s) }
  end
end
