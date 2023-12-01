class CreateRedirections < ActiveRecord::Migration[6.0]
  def change
    create_table :redirections do |t|
      t.string :url_address, null: false
      t.string :mask_url, limit: 8, null: false, index: { unique: true }

      t.timestamps
    end
  end
end
