

require 'nokogiri'
require 'open-uri'
require 'openssl'
class ZepRecruiter
  attr_reader :job, :location
  def initialize(a,b)
    @job = a
    @location = b
  end
  def scrap
    url ='https://www.ziprecruiter.com/candidate/search?&search=asp.net&location=lahore'
    content = open(url, ssl_verify_mode: OpenSSL::SSL::VERIFY_NONE, 'User-Agent' => 'opera')
    doc = Nokogiri::HTML(content)
    return

    #document = Nokogiri::HTML.parse(open('https://www.indeed.com.pk/m/jobs?q='+@job+'&l='+@location))
  end
end