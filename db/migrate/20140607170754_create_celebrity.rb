class CreateCelebrity < ActiveRecord::Migration
  def change
    create_table :celebrities do |t|
      t.string :name
      t.string :job
    end
  end
end
