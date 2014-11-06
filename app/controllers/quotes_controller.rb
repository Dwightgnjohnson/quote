class QuotesController < ApplicationController

  def index
    @quotes = Quote.all
    @quotes = @quotes.search(params[:search]) if params[:search].present?
  end

end
