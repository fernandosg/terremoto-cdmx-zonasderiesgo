class CreateEntidads < ActiveRecord::Migration[5.1]
  def change
    create_table :entidads,id: :uuid do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
