class CreateVisits < ActiveRecord::Migration[6.1]
  def change
    create_table :visits do |t|
      t.string :ip_address
      t.references :redirection

      t.timestamps
    end
  end
end
