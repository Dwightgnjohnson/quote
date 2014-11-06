class Quote < ActiveRecord::Base
   include PgSearch
  pg_search_scope :search,
                against: [:quote, :author],
                using: {
                  tsearch: {dictionary: "english"}
                }
end
