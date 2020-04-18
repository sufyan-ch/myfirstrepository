class CreateJob
  attr_reader :job_title, :job_location, :job_url ,:job_description
  def initialize(jobtitle,joblocation,joburl,jobdescription)
    @job_title=jobtitle
    @job_location=joblocation
    @job_url=joburl
    @job_description=jobdescription
  end
  def create

    Job.create(:job_title =>@job_title ,
               :job_location =>@job_location ,
               :job_link => @job_url,
               :job_description => @job_description)
  end

end