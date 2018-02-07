class CreateNoddles < ActiveRecord::Migration[5.1]
  def change
    create_table :noddles do |t|
      t.string :title
      t.string :noddle

      t.timestamps
    end
  end
end
