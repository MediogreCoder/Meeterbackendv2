class MessagingsController < ApplicationController
  before_action :set_messaging, only: %i[ show update destroy ]

  # GET /messagings
  def index
    @messagings = Messaging.all

    render json: @messagings
  end

  # GET /messagings/1
  def show
    render json: @messaging
  end

  # POST /messagings
  def create
    @messaging = Messaging.new(messaging_params)

    if @messaging.save
      render json: @messaging, status: :created, location: @messaging
    else
      render json: @messaging.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /messagings/1
  def update
    if @messaging.update(messaging_params)
      render json: @messaging
    else
      render json: @messaging.errors, status: :unprocessable_entity
    end
  end

  # DELETE /messagings/1
  def destroy
    @messaging.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_messaging
      @messaging = Messaging.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def messaging_params
      params.require(:messaging).permit(:mentee_full_name, :mentor_full_name, :message_owner, :message_body)
    end
end
