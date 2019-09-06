class CreateApiV1Posts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.belongs_to :user, foreign_key: true
      t.string :title
      t.text :content
      t.bigint :score
      t.bigint :views
      
      t.timestamps
    end
  end
end
