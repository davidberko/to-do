class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :task

      t.timestamps
    end
  end
end
