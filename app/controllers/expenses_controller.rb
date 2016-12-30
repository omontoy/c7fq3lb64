class ExpensesController < ApplicationController
  def index
    @expenses = Expense.order("date DESC")

    if !params[:concept].empty?  
      @expenses = @expenses.where("concept LIKE ?", "%#{params[:concept].strip}%")
    end

    if !params[:category_id].empty?
      @expenses = @expenses.where(category_id: params[:category_id])
    end
  end
end
