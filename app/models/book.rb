class Book < ActiveRecord::Base
    belongs_to :author

    def self.title_ascending
        self.all.order(title: :asc)
    end

    def self.title_descending
        self.all.order(title: :desc)
    end

    def self.by_price_ascending
        self.all.order(price: :asc)
    end

    def self.by_price_descending
        self.all.order(price: :desc)
    end
end

