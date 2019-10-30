class ExpensesController < ApplicationController
 
 def index
        @expenses = Expense.all
        @theUser = User.all
 end

    def show
        @expense = Expense.find(params[:id])
         @theUser = User.all
    end
    
    def new
        @expense = Expense.new
         @theUser = User.all
    
    end
    def create
        @expense = Expense.new(expense_params)
         @theUser = User.all
        
        
        if @expense.save
            
            redirect_to @expense
           else
               render 'new'
        end
        
        
    #    render plain: params[:articles].inspect
    end
    def edit
        @theUser = User.all
        @expense = Expense.find(params[:id])
    end
    def update
         @theUser = User.all
        @expense = Expense.find(params[:id])
        if @expense.update(expense_params)
            redirect_to @expense
        else
            render 'edit'
        end
    end
    
    def destroy
        @expense = Expense.find(params[:id])
        @expense.destroy
        
        redirect_to expenses_path
    end
    
end

private

def expense_params
    params.require(:expense).permit(:description, :price)
end

