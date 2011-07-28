FactoryGirl.define do
  factory :user do |u|
    sequence(:name) {|n| "Name#{n}"}
    sequence(:email) {|n| "email#{n}@example.com"}
    u.password {"password"}
  end
end

module CustomFactory
  def self.page(params = {})
    location = YAML.load_file("#{Rails.root}/config/wiki.yml")[Rails.env]
    system "touch #{Rails.root}/#{location}/test_page.md" 
    system "cd #{Rails.root}/#{location}; git add test_page.md; git commit -m 'test'" 
  end

  def self.destroy_all
    location = YAML.load_file("#{Rails.root}/config/wiki.yml")[Rails.env]
    system "cd #{Rails.root}/#{location}; git rm -r *; git commit -m 'rollback'" 
  end
end
