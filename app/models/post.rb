class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: { minimum: 10 }
    validates :summary, length: { maximum: 10 }

    # https://guides.rubyonrails.org/active_record_validations.html#inclusion
        # validates :size, inclusion: { in: %w(small medium large) }
        # validates :category, inclusion: { in: %w(Something Inclusive) }
        # validates :category, inclusion: { in: %w(Bowling Ball) }
        validates :category, inclusion: { in: %w(Fiction) }

    # validates :post, presence: true
    # validates :post, invalid?
    # validates :attributes, presence: true
    # validates :name, presence: true
    # validates :category, length: { in: 1..20 }

    validates_with TitleValidator


end
