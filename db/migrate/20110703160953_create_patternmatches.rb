class CreatePatternmatches < ActiveRecord::Migration
  def self.up
    create_table :patternmatches do |t|
      t.string :name
      t.string :shortnamepattern
      t.string :urlpattern
      t.integer :priority
      t.timestamps
    end
  end

  def self.down
    drop_table :patternmatches
  end
end
