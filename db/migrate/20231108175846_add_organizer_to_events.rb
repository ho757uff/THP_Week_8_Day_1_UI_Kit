# db/migrate/20231108175846_add_organizer_to_events.rb
class AddOrganizerToEvents < ActiveRecord::Migration[7.0]
  def change
    add_reference :events, :organizer, null: false, foreign_key: { to_table: :users }
  end
end
