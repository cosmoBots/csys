class Codes < ActiveRecord::Migration[5.2]
  def self.up
    add_column :projects, :code, :string, :limit => 20
    add_column :issues, :code, :string, :limit => 20
  end

  def self.down
    remove_column :issues, :code
    remove_column :projects, :code
  end
end
