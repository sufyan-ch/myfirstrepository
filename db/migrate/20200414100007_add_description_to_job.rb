class AddDescriptionToJob < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs ,:job_description, :string
  end
end
