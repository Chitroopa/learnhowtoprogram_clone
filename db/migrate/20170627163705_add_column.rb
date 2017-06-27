class AddColumn < ActiveRecord::Migration[5.1]
  def change
    add_column(:sections, :section_number, :integer)
    add_column(:lessons, :lesson_number, :integer)
  end
end
