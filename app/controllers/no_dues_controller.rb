class NoDuesController < ApplicationController
  before_action :set_no_due, only: [:show, :edit, :update, :destroy]

  # GET /no_dues
  # GET /no_dues.json
  def index
    @no_dues = NoDue.all
  end

  # GET /no_dues/1
  # GET /no_dues/1.json
  def show
  end

  # GET /no_dues/new
  def new
    @no_due = NoDue.new
  end

  # GET /no_dues/1/edit
  def edit
  end

  # POST /no_dues
  # POST /no_dues.json
  def create
    @no_due = NoDue.new(no_due_params)

    respond_to do |format|
      if @no_due.save
        format.html { redirect_to @no_due, notice: 'No due was successfully created.' }
        format.json { render :show, status: :created, location: @no_due }
      else
        format.html { render :new }
        format.json { render json: @no_due.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /no_dues/1
  # PATCH/PUT /no_dues/1.json
  def update
    respond_to do |format|
      if @no_due.update(no_due_params)
        format.html { redirect_to @no_due, notice: 'No due was successfully updated.' }
        format.json { render :show, status: :ok, location: @no_due }
      else
        format.html { render :edit }
        format.json { render json: @no_due.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /no_dues/1
  # DELETE /no_dues/1.json
  def destroy
    @no_due.destroy
    respond_to do |format|
      format.html { redirect_to no_dues_url, notice: 'No due was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_no_due
      @no_due = NoDue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def no_due_params
      params.require(:no_due).permit(:user_id, :academic_session_id, :subject_ids)
    end
end
