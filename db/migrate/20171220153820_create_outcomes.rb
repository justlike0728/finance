class CreateOutcomes < ActiveRecord::Migration[5.1]
  def change
    create_table :outcomes do |t|
      t.date :date
      t.string :department
      t.string :sub_title
      t.text :explan
      t.integer :money, default: 0
      t.string :plan_code
      t.string :receipt
      t.boolean :asterisk
      t.string :people


      t.timestamps
    end
  end
end
