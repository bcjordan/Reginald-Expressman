class CreateNamedaliases < ActiveRecord::Migration
  def self.up
    create_table :namedaliases do |t|
      t.text :shortname
      t.text :url
      t.text :longname
      t.text :description
      t.timestamps
    end
  end

  def self.down
    drop_table :namedaliases
  end
end
