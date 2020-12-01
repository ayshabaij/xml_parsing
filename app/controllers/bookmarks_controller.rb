# class BookmarksController < InheritedResources::Base
#   before_action :authenticate_user!
#   def index
#     # @xml = Xml.last
#     @bookmarks = current_user.is_bookmarker?
#   end
#
#   def new
#     @bookmark = current_user.bookmarks.build
#   end
#   #
#   # def create
#   #   @bookmark =current_user.bookmarks.build(bookmark_params)
#   #   respond_to do |format|
#   #     if @bookmark.save
#   #       format.html { redirect_to @bookmark, notice: 'successfully created.' }
#   #       format.json { render :show, status: :created, location: @bookmark }
#   #     else
#   #       format.html { render :new }
#   #       format.json { render json: @bookmark.errors, status: :unprocessable_entity }
#   #     end
#   #   end
#   # end
#
#   def show
#
#   end
#
#   private
#
#   def bookmark_params
#     params.require(:bookmark).permit(:title, :url, :desciption, :favorite)
#   end
#
# end
