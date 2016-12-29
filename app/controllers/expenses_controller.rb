class ExpensesController < ApplicationController
  def index
    @expenses = Expense.order("date DESC")

    if !params[:concept].empty?  
      @expenses = Expense.where("concept LIKE ?", "%#{params[:concept].strip}%")
    end

    if !params[:category_id].empty?
      @expenses = Expense.where(category_id: params[:category_id])
    end
  end
end
