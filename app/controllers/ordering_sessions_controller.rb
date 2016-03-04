class OrderingSessionsController < ApplicationController
  before_action :find_ordering_session, only: [:show]

  def index
    @ordering_sessions = OrderingSession.all
  end

  def show
  end

  def new
    @ordering_session = OrderingSession.new
  end

  def create
    @ordering_session = OrderingSession.new(ordering_session_params)
    if @ordering_session.valid?
      @ordering_session = OrderingSession.create!(ordering_session_params)
      redirect_to ordering_session_path(@ordering_session)
    else
      render :new
    end
  end

  private
  def find_ordering_session
    @ordering_session = OrderingSession.find(params[:id])
  end

  def ordering_session_params
    params.require(:ordering_session).permit(:buyer)
  end
end
