class EndorsementsController < ApplicationController
  load_and_authorize_resource

  def update
    if @endorsement.update_attribute :guide_order_position, params[:endorsement][:guide_order_position]
      render json: {}
    else
      render json: {errors: @endorsement.full_error_messages}
    end
  end
end
