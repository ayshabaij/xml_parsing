# desc 'Say hello!'
# task :hello_world do
#   puts "Hello"
# end


require 'nokogiri'
# task :xml_parsing do
# f = File.open('lib/assets/judgement.xml')
# doc = Nokogiri::XML(f)
# # f.close
# puts doc
# end
# binding.pry 
namespace :db do
    namespace :seed do
#
#         desc 'Add old data to database'
        task :import_data => :environment do
#
            OLD_DATA = "#{Rails.root}/lib/assets/judgement.xml"
#
            doc = Nokogiri::XML(File.open(OLD_DATA)) do |config|
                config.options = Nokogiri::XML::ParseOptions::STRICT
            end
#
            doc.css("xml").each do |node|
                Xml.create(
                    :name => node['name'],
                    :citation => node['citation'],
                    :year => node['year'],
                    :nominal_app => node['nominal_app'],
                    :nominal_res => node['nominal_res'],
                    :headnote => node['headnote'],
                    :judgement => node['judgement'],
                    :case_no => node["case_no"],
                    :justices => node['justices'],
                    :case_number => node['case_number'],
                    :party_details => node['party_details'],
                    :petitioner_advocates => node['petitioner_advocates'],
                    :respondent_advocates => node['respondent_advocates'],
                    :judgement_date => node['judgement_date'],
                    :judgement_object_id => node['judgement_object_id']
                )
            end
        end
    end
end
