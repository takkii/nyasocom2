# config/initializers/better_html.rb

BetterHtml.configure do |config|
  config.allow_single_quoted_attributes = false
end

BetterHtml.config = BetterHtml::Config.new(YAML.load(File.read('./.better-html.yml')))

impl = BetterHtml::BetterErb.content_types['html.erb']
BetterHtml::BetterErb.content_types['htm.erb'] = impl
BetterHtml::BetterErb.content_types['atom.erb'] = impl
BetterHtml::BetterErb.content_types['html+variant.erb'] = impl