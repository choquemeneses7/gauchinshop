class SorceryCore < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username,         :null => false
      t.string :email,            :default => nil
      t.string :crypted_password, :default => nil
      t.string :salt,             :default => nil

      t.timestamps
    end
    end
    def self.down

    drop_table :users
  end
end
