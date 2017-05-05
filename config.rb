# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

configure :build do
  activate :minify_css
  activate :minify_javascript
end

set :build_dir, "docs"
activate :relative_assets
set :relative_links, true

activate :blog do |blog|
  blog.name = "blog"
  blog.prefix = "blog"
  blog.paginate = true
end

activate :blog do |blog|
  blog.name = "announcements"
  blog.prefix = "announcements"
  blog.paginate = true
end

activate :blog do |blog|
  blog.name = "talk"
  blog.prefix = "talk"
  blog.paginate = true
end
