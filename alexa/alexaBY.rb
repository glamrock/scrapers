##  Via 
# How to run:
#   ruby alexaru.rb
#
# Output:
#   20 files each with the data in csv format
#
# Credits:   
#   zerothabhishek and glamrock on github
#   
#License: 
#	BSD 2-clause 2012, 2013: zerothabhishek and Griffin Boyce
#   
# Dependencies:
#   ruby version > 1.9  # "ruby -v" to check
#   nokogiri gem        # "gem install nokogiri" to install
##


require 'nokogiri'
require 'open-uri'
require 'csv'
 
def bar(li)
  begin
    site_link=li.css("p.desc-paragraph a")[0].content
    [site_link]
  rescue
    []
  end
end
 
def foo1(url)
  doc = Nokogiri::HTML(open(url))
  listings=doc.css("li.site-listing")
  output = listings.collect{|li| bar(li) }
end
 
def foo2(data, i)
  CSV.open("alexaBY.csv","ab") do |csv|
    data.each{|o| csv << o}
  end
end
 
urls = (0..19).to_a.map{|i| "http://www.alexa.com/topsites/countries;#{i}/BY "}
urls.each_with_index do |url,i|
  data=foo1(url)
  foo2(data,i)
end
