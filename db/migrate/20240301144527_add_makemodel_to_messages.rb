class AddMakemodelToMessages < ActiveRecord::Migration[7.0]
  def change
    add_column :messages, :make, :string
    add_column :messages, :model, :string
    add_column :messages, :n_nummber, :string
  end
end
