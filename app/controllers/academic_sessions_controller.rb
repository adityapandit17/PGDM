class AcademicSessionsController < ApplicationController
  before_action :set_academic_session, only: [:show, :edit, :update, :destroy]

  # GET /academic_sessions
  # GET /academic_sessions.json
  def index
    @academic_sessions = AcademicSession.all
  end

  # GET /academic_sessions/1
  # GET /academic_sessions/1.json
  def show
  end

  # GET /academic_sessions/new
  def new
    @academic_session = AcademicSession.new
  end

  # GET /academic_sessions/1/edit
  def edit
  end

  # POST /academic_sessions
  # POST /academic_sessions.json
  def create
    @academic_session = AcademicSession.new(academic_session_params)

    respond_to do |format|
      if @academic_session.save
        format.html { redirect_to @academic_session, notice: 'Academic session was successfully created.' }
        format.json { render :show, status: :created, location: @academic_session }
      else
        format.html { render :new }
        format.json { render json: @academic_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /academic_sessions/1
  # PATCH/PUT /academic_sessions/1.json
  def update
    respond_to do |format|
      if @academic_session.update(academic_session_params)
        format.html { redirect_to @academic_session, notice: 'Academic session was successfully updated.' }
        format.json { render :show, status: :ok, location: @academic_session }
      else
        format.html { render :edit }
        format.json { render json: @academic_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /academic_sessions/1
  # DELETE /academic_sessions/1.json
  def destroy
    @academic_session.destroy
    respond_to do |format|
      format.html { redirect_to academic_sessions_url, notice: 'Academic session was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_academic_session
      @academic_session = AcademicSession.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def academic_session_params
      params.require(:academic_session).permit(:title, :from, :to)
    end
end
