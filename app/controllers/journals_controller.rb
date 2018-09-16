class JournalsController < ApplicationController

  before_action :set_journal, only: [:show, :edit, :update, :destroy]

  def index
    @journals = Journal.all
    authorize @journals
  end

  def show
    authorize @journal
  end

  def new
    @journal = Journal.new
    authorize @journal
  end

  def create
    @journal = Journal.new(journal_params)
    authorize @journal
    if @journal.save
      redirect_to @journal, notice: :created
    else
      render :new
    end
  end

  def edit
    authorize @journal
  end

  def update
    authorize @journal
    if @journal.update(journal_params)
      redirect_to @journal, notice: :updated
    else
      render :edit
    end
  end

  def destroy
    authorize @journal
    flash[:notice] = :destroyed
    @journal.destroy
    redirect_to @journal
  end

  private

  def set_journal
    @journal = Journal.find(params[:id])
  end

  def journal_params
    # TODO: increase security
    params.require(:journal).permit!
  end
end
