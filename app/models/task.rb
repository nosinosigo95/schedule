class Task < ApplicationRecord
    validates :title, presence:true, length:{maximum: 20}
    validates :start_date, presence:true
    validates :end_date, presence:true
    validates :memo , length:{maximum: 500}
    validate :end_date_cannot_be_older_than_start_date
    def end_date_cannot_be_older_than_start_date 
        if end_date < start_date
            errors.add(:end_date,"が開始日より前になっています。")
        end
    end
end
