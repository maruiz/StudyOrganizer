class StudyEntriesController < ApplicationController
  before_action :set_study_entry, only: [:show, :edit, :update, :destroy]

  # GET /study_entries
  # GET /study_entries.json
  def index
    @study_entries = StudyEntry.all
  end

  # GET /study_entries/1
  # GET /study_entries/1.json
  def show
  end

  # GET /study_entries/new
  def new
    @study_entry = StudyEntry.new
  end

  # GET /study_entries/1/edit
  def edit
  end

  # POST /study_entries
  # POST /study_entries.json
  def create
    @study_entry = StudyEntry.new(study_entry_params)
    @study_entry.task_id = params[:task_id]
    respond_to do |format|
      if @study_entry.save
        format.html { redirect_to @study_entry, notice: 'Study entry was successfully created.' }
        format.json { render :show, status: :created, location: @study_entry }
      else
        format.html { render :new }
        format.json { render json: @study_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /study_entries/1
  # PATCH/PUT /study_entries/1.json
  def update
    respond_to do |format|
      if @study_entry.update(study_entry_params)
        format.html { redirect_to @study_entry, notice: 'Study entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @study_entry }
      else
        format.html { render :edit }
        format.json { render json: @study_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /study_entries/1
  # DELETE /study_entries/1.json
  def destroy
    @study_entry.destroy
    respond_to do |format|
      format.html { redirect_to study_entries_url, notice: 'Study entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_study_entry
      @study_entry = StudyEntry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def study_entry_params
      params.require(:study_entry).permit(:start_date, :start_time, :end_date, :end_time, :task_id)
    end
end
