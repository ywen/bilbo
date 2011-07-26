class Page
  class << self
    def all
      location = YAML.load_file("#{Rails.root}/config/wiki.yml")[Rails.env]
      wiki = Gollum::Wiki.new("#{Rails.root}/#{location}")
      wiki.pages
    end
  end
end
