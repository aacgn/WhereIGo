class FoodSpeciality < ApplicationRecord
    after_initialize :set_default_values
    
    def set_default_values
        self.is_active ||= true
    end
    
    validates :food_id, presence:true
    validates :establishment_id, presence:true
end
