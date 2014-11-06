class QuotesController < ApplicationController

  before_action do
    @tags = ActsAsTaggableOn::Tag.most_used
  end

  def index
    @quotes = Quote.all
    @quotes = @quotes.search(params[:search]) if params[:search].present?
  end


  def tagged
    @quotes = Quote.tagged_with(params[:tag_name])
    render :index
  end

end
