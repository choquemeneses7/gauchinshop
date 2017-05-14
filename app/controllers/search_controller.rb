class SearchController < ApplicationController
  def create
    palabra = "%#{params[:keyword]}%"
    @posts = Post.where("titulo LIKE ?",palabra)
    respond_to do |format|
      format.js
      end
  end
end
