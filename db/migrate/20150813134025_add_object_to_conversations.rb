class AddObjectToConversations < ActiveRecord::Migration
  def change
    change_table :mailboxer_conversations do |t|
      t.belongs_to :object, polymorphic: true
    end
  end
end