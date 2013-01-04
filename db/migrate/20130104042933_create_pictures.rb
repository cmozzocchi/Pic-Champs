class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      
      t.string   :title
      t.integer  :user_id
      t.string   :image
      t.integer  :votes_count, :default => 0

      t.timestamps
    end

  end
end
