class ExpensesController < ApplicationController
  # def index
  #  if params[:concept]
  #     @expenses = Expense.where(concept: "#{params[:concept].downcase.capitalize}")

  #     @expenses.each do |expense|
  #        expense.concept.include?(params[:concept]) ? expense : ""
  #     end
  #  else
  #     @expenses = Expense.order("date DESC")
  #  end
  # end

  # concept y category_id 
  # concept y !category_id
  # !concept y category_id
  # !concept y !category_id
  def index
   if !params[:concept].empty? || !params[:category_id].empty?
      @expenses = Expense.where(concept: params[:concept].strip.downcase.capitalize, category_id: params[:category_id])
   else
      @expenses = Expense.order("date DESC")
   end
  end
end
