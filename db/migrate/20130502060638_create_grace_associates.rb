class CreateGraceAssociates < ActiveRecord::Migration
  def change
    create_table :grace_associates do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :password_confirmation

      t.timestamps
    end
  end
end
