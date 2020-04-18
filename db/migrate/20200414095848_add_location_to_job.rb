class AddLocationToJob < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs ,:job_location , :string
  end
end
