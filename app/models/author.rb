class Author < ActiveRecord::Base
    has_many :books

    def self.name_ascending
        self.all.order(name: :asc)
    end

    def self.name_descending
        self.all.order(name: :desc)
    end
end