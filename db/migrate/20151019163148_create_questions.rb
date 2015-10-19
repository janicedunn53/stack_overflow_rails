class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.column :user, :string
      t.column :inquiry, :string
      t.column :date, :datetime

      t.timestamps

    end
  end
end
