class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.column :user, :string
      t.column :response, :string

      t.timestamps

    end
  end
end
