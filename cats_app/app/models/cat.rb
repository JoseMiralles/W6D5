require "action_view"

class Cat < ApplicationRecord
    include ActionView::Helpers::DateHelper
    
    validates :birth_date, :name, presence: true
    validates :sex, inclusion: ['M', 'F', 'N']
    validates :color, inclusion: ['Brown', 'Black', 'Grey', 'White', 'Orange', 'Spotted', 'Calico'], presence: true
    
    def age
       time_ago_in_words(self.birth_date)
    end

end