class Quote < ActiveRecord::Base
  acts_as_taggable
   include PgSearch
  pg_search_scope :search,
                against: [:quote, :author],
                using: {
                  tsearch: {dictionary: "english"}
                }
end
