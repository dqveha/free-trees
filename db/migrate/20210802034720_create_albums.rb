class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      # Here we'll put code that specifies the changes we want to make to our database.
      t.column(:name, :string)
      t.column(:year, :integer)

      t.timestamps()
    end
  end
end
