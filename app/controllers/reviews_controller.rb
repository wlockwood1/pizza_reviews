class ReviewsController < ApplicationController
  helper_method :sort_column, :sort_direction

  def index
    @reviews = Review.order("#{sort_column} #{sort_direction}")

    @hash = Gmaps4rails.build_markers(@reviews) do |review, marker|
      marker.lat review.latitude
      marker.lng review.longitude
      marker.title review.name
      marker.json data: { id: review.id }
      marker.infowindow review.review_infowindow
      marker.picture review.review_marker_picture
    end

    respond_to do |format|
      format.js
      format.html
    end
  end

  def show
  end

  def new
    @review = Review.new
  end

  def edit
    @review = Review.find(params[:id])
  end

  def create
    @reviews = Review.all
    @review = Review.create(review_params)
  end

  def update
    @reviews = Review.order('score desc')
    @review = Review.find(params[:id])

    @review.update_attributes(review_params)
  end


  def destroy
    @review = Review.find(params[:id])
    @review.destroy

    respond_to do |format|
       format.html { redirect_to index }
       format.json { head :no_content }
       format.js   { render :layout => false }
    end
  end

  private
    def sortable_columns
      ["review_date", "name", "score"]
    end

    def sort_column
      sortable_columns.include?(params[:column]) ? params[:column] : "name"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end

    def set_review
      @review = Review.find(params[:id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.require(:review).permit(:review_date, :name, :address, :score, :url)
    end
end
