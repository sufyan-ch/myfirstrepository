

  task :mytask => :environment do
    @job="asp.net"
    @location="Lahore"
    @job1="angular"
    @location1="Lahore"
    @job2="ruby"
    @location2="Lahore"
    Indeed.new(@job,@location).scrap
    Indeed.new(@job1,@location1).scrap
    Indeed.new(@job2,@location2).scrap

  end






