class TodosController < ApplicationController
  before_action :set_todo, only: %i[ show edit update destroy ]

  # GET /todos or /todos.json
  def index
    @todos = Todo.all
    # テスト修正
  end

  # GET /todos/1 or /todos/1.json
  def show
  end

  # GET /todos/new
  def new
    @todo = Todo.new
  end

  # GET /todos/1/edit
  def edit
  end

  # POST /todos or /todos.json
  def create
    @todo = Todo.new(todo_params)
    # test3@example.comのユーザーが作られていない事を確認したい

    respond_to do |format|
      if @todo.save

      #   todo = Todo.first
      #   user = User.first
      #   # @todo.title = "yahoo"


      # ActiveRecord::Base.transaction do
      #   todo.done!
      #   User.create!(email: "aa@aa.aa", password: 'password')
      # end

        # @todo.with_lock do

        #   @todo.status = 1
        #   @todo.save!
        # end
        # user.with_lock do
        #   User.create(email: "aa@aa.aa",password: "password")
        #   task.done!
        # end
  begin

    ActiveRecord::Base.transaction do

      User.all.each do |user|
        if user.id == 1
          User.create!(email: "test8@example.com", password: "password")
          binding.pry
        end
        User.create!(email: user.email, password: "password")
      end
    end

  rescue => e
    binding.pry
  end
  binding.pry



        format.html { redirect_to @todo, notice: "Todo was successfully created." }
        format.json { render :show, status: :created, location: @todo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @todo.errors, status: :unprocessable_entity }
      end


    end
    rescue => e
      binding.pry

  end

  # PATCH/PUT /todos/1 or /todos/1.json
  def update
    respond_to do |format|
      if @todo.update(todo_params)
        format.html { redirect_to @todo, notice: "Todo was successfully updated." }
        format.json { render :show, status: :ok, location: @todo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @todo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todos/1 or /todos/1.json
  def destroy
    @todo.destroy
    respond_to do |format|
      format.html { redirect_to todos_url, notice: "Todo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todo
      @todo = Todo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def todo_params
      params.require(:todo).permit(:title)
    end
end
