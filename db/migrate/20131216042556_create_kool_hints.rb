class CreateKoolHints < ActiveRecord::Migration
  def change
    create_table :kool_hints do |t|
      t.string :name, :null => false
      t.text :content, :null => false

      t.timestamps
    end
  end
end
