class CreateFrens < ActiveRecord::Migration[7.0]
  def change
    create_table :frens do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :twitter
      t.string :phone

      t.timestamps
    end
  end
end
