class AddJtiToUsers < ActiveRecord::Migration[8.0]
  def up
    add_column :users, :jti, :string
    User.reset_column_information
    User.all.each { |user| user.update_column(:jti, SecureRandom.uuid) }
    change_column_null :users, :jti, false
    add_index :users, :jti, unique: true
  end

  def down
    remove_column :users, :jti
  end
end
