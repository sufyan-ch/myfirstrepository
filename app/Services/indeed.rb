require 'nokogiri'
require 'open-uri'
class Indeed
  attr_reader :a, :b

  def initialize(a,b)
    @a = a
    @b = b
  end

  def scrap
    document = Nokogiri::HTML.parse(open('https://www.indeed.com.pk/m/jobs?q='+@a+'&l='+@b))
    tags = document.xpath('//h2[@class="jobTitle"]/a/@href')
    tags.each do |tag|
      document1 = Nokogiri::HTML.parse(open('https://www.indeed.com.pk/'+tag+'&tk=1e5rspkba904s800'))
      job_title = Nokogiri::HTML.parse(open('https://www.indeed.com.pk/'+tag+'&tk=1e5rspkba904s800')).title
      job_description = document1.xpath("//div[@class='jobsearch-jobDescriptionText']").text
      job_location = document1.xpath("//span[@class='jobsearch-JobMetadataHeader-iconLabel']").text
      job_url ='https://www.indeed.com.pk/'+tag+'&tk=1e5rspkba904s800'
      CreateJob.new(job_title,job_location,job_url,job_location).create
    end

  end
end