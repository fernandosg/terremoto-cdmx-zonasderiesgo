class CreateDelegacions < ActiveRecord::Migration[5.1]
  def change
    create_table :delegacions,id: :uuid do |t|
      t.string :nombre
      t.references :entidad, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
