class ScrappingController < ApplicationController

  def search
    @job = params[:job]
    @location = params[:location]
    @web=params[:web]
    if @job.nil? && @location.nil?
      render :search
    elsif @web == "indeed"
      Indeed.new(@job,@location).scrap
      redirect_to 'https://www.indeed.com.pk/m/jobs?q='+@job+'&l='+@location

    else
      redirect_to 'https://www.ziprecruiter.com/candidate/search?&search='+@job+'&location='+@location
    end
    end
    end
