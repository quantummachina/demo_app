class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.text :t, default: ''
      t.timestamps
    end
  end
end
