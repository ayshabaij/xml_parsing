class AddNewColumnToXml < ActiveRecord::Migration[6.0]
  def change
    add_column :xmls, :name, :string
    add_column :xmls, :citation, :string
    add_column :xmls, :year, :string
    add_column :xmls, :nominal_app, :string
    add_column :xmls, :nominal_res, :string
    add_column :xmls, :headnote, :string
    add_column :xmls, :judgement, :string
    add_column :xmls, :case_no, :string
    add_column :xmls, :justices, :string
    add_column :xmls, :case_number, :string
    add_column :xmls, :party_details, :string
    add_column :xmls, :petitioner_advocates, :string
    add_column :xmls, :respondent_advocates, :string
    add_column :xmls, :judgement_date, :time
    add_column :xmls, :judgement_object_id, :string
  end
end
