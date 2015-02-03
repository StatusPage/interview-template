require 'open-uri'

class Hbo

  HBO_XML_URL = 'http://catalog.lv3.hbogo.com/apps/mediacatalog/rest/productBrowseService/HBO/category/INDB487'

  def self.fetch_listing
    xml = Nokogiri::XML(open(HBO_XML_URL))
    hbo_features = Hash.from_xml(xml.to_s)['response']['body']['productResponses']['featureResponse']

    # hbo_features.collect do |feature|

      # platform_id = feature['TKey'].strip
      # title = feature['title'].strip
      # rating = feature['ratingResponse']['ratingDisplay'].strip
      # summary = feature['summary'].strip
      # year = feature['year'].to_s.strip
      #
      # started = feature['startDate']
      # expires = feature['endDate']

    # end
  end


end