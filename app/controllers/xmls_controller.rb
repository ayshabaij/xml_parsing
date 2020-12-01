class XmlsController < ApplicationController
  # before any blog action happens, it will authenticate the user
  before_action :authenticate_user!

  def index
    # binding.pry
    # binding.pry
    @user = current_user.email
    search = params[:term].present?
    @xml = if search
      Xml.search(search)
    else
      Xml.all
    end
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "xml.pdf",   # Excluding ".pdf" extension.
        template: "xmls/index.html.erb"
      end
    end
  end


  def show

  end

  def autocomplete
    render json: Xml.search(params[:query],{
      fields: ["name", "citation", "year","nominal_app", "nominal_res", "headnote", "judgement", "case_no",
        "justices","case_number","party_details","petitioner_advocates","respondent_advocates","judgement_date",
        "judgement_object_id"],
        match: :word_start,
        limit: 10,
        load: false,
        misspellings: {below: 5}
        }).map(&:name)
      end


      def bookmark
        # @user = current_user.email
        # @xmls = Xml.last
        # binding.pry
        User. is_bookmarker?
      end


      # def searchcriteria
      #   render json: Xml.search(params[:query], {
      #     fields: ["name", "citation", "year","nominal_app", "nominal_res", "headnote", "judgement", "case_no",
      #     "justices","case_number","party_details","petitioner_advocates","respondent_advocates","judgement_date",
      #   "judgement_object_id"],
      #     limit: 10,
      #     load: false,
      #     misspellings: {below: 5}
      #     }).map(&amp;:name)
      #   end

      #Other Restful methods show, new, edit, create, update, destroy

      # def import
      #   Xml.import(params[:file])
      #   redirect_to root_url, notice: "Products imported."
      # end

    end
