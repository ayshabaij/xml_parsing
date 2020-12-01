class Xml < ApplicationRecord
  # require 'nokogiri'
  act_as_bookmarkee
  searchkick word_start: [:name, :citation, :year, :nominal_app, :nominal_res, :headnote, :judgement,
    :case_no,:justices,:case_number,:party_details,:petitioner_advocates,:respondent_advocates,:judgement_date,
    :judgement_object_id]
    belongs_to :user

    include Elasticsearch::Model
    include Elasticsearch::Model::Callbacks

    index_name Rails.application.class.parent_name.underscore
    document_type self.name.downcase

    def search_data
      {
        name: name,
        citation: citation,
        year: year,
        nominal_app: nominal_app,
        nominal_res: nominal_res,
        headnote: headnote,
        judgement: judgement,
        case_no: case_no,
        justices: justices,
        case_number: case_number,
        party_details: party_details,
        petitioner_advocates: petitioner_advocates,
        respondent_advocates: respondent_advocates,
        judgement_date: judgement_date,
        judgement_object_id: judgement_object_id
      }
    end
    # def self.import(file)
    #   doc = Nokogiri::XML.parse(file)
    #   #your processing code goes here
    # end
  end
