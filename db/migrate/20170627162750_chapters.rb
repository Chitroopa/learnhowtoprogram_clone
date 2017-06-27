class Chapters < ActiveRecord::Migration[5.1]
  def change
    create_table :chapters do |t|
      t.column :title, :string

      t.timestamps
    end
    create_table :sections do |t|
      t.column :heading, :string
      t.column :chapter_id, :integer

      t.timestamps
    end
    create_table :lessons do |t|
      t.column :name, :string
      t.column :content, :string
      t.
      t.column :section_id, :integer

      t.timestamps
    end
  end
end
