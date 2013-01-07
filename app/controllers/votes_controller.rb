class VotesController < ApplicationController
  before_filter :authenticate_user!

  def vote
    @vote = Vote.new
    @vote.user_id = current_user.id
    @vote.picture_id = params[:id]
    respond_to do |format|
          if @vote.save
            format.html { redirect_to :back, notice: 'Successfully voted!' }
            format.js
            format.json { render json: pictures_path, status: :created, location: pictures_path }
          else
            format.html { redirect_to :back, notice: "Error in voting. #{vote.errors.full_messages}"}
            # format.json { render json: @vote.errors, status: :unprocessable_entity }
          end
        end
    end

end
