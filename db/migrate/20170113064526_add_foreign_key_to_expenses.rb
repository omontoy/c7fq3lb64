class AddForeignKeyToExpenses < ActiveRecord::Migration
  def change
   add_reference :expenses, :user, foreign_key: true
  end
end
