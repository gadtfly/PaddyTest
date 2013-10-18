class LikesController < ApplicationController
  respond_to :html, :js
  before_filter :load_likeable

  def create
    @like = @likeable.likes.new(params[:like])
    @like.save
    respond_with(@like)
  end

  def destroy
    @like = Like.find(params[:id])
    @like.destroy
    respond_with(@like)
  end

  private

  def load_likeable
    cls, id = request.path.split("/")[1..2]
    @likeable = cls.singularize.classify.constantize.find(id)
  end 
end