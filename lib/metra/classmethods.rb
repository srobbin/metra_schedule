require 'nokogiri'
require 'open-uri'


module MetraSchedule
  module ClassMethods

    def scrape(html_page)
      @html_doc = open(html_page) if html_page.is_a?(StringIO)
      @html_doc = html_page if html_page.is_a?(File)
      @html_doc = Nokogiri::HTML(@html_doc)
    end

    def line(line_name)
      MetraSchedule::Line.new(line_name)
    end

  end
end

#doc = Nokogiri::HTML(open(UP_NW))
#tables = doc.css('table.schedule')
#weekday_inbound = tables[0..1]
#saturday_inbound = tables[2]
#sunday_holiday_inbound = tables[3]
#weekday_outbound = tables[4..6]
#saturday_outbound = tables[7]
#sunday_holiday_outbound = tables[8]
#p tables.size
