class AddJoblinkToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs ,:job_link , :string
  end
end
