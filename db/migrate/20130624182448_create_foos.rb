class CreateFoos < ActiveRecord::Migration
  def change
    create_table :foos do |t|
      t.references :bar#, index: true
      t.string :subject
      t.text :body

      t.timestamps
    end
  end
end
