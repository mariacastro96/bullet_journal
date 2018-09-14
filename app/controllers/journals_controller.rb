class JournalsController < ApplicationController

  before_action :set_journal, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
    authorize @journal
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_journal
    @journal = Journal.find(params[:id])
  end
end
