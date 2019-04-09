require 'open-uri'
require 'nokogiri'
class HomeController < ApplicationController
  def index

    @titles = Array.new
    doc = Nokogiri::HTML(open("http://coop.seoultech.ac.kr/bbs/board.php?bo_table=restaurant2&wr_id=99"))
    doc.css(".with-review-wrapper").each do |x|
      @titles << x.inner_text # if x.inner_text.include?("해외")
    end
    
  end
end
