module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_filter :set_title_defaults
  end
  
  def set_title_defaults
    @page_title = "Portfolio | My Portfolio website"
    @seo_keywords = "Fermin Sandoval portfolio"
  end
end