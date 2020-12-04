class RemoveAgeRequired < ActiveRecord::Migration[5.2]
  def change
    change_column_null :cats, :age, :false
  end
end
