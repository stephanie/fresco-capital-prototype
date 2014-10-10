use Rack::Static,
  :urls => ["/images", "/js", "/css", "/slick"],
  :root => "public"

# Additional mime types
Rack::Mime::MIME_TYPES.merge!({
  ".eot" => "application/vnd.ms-fontobject",
  ".ttf" => "font/ttf",
  ".otf" => "font/otf",
  ".woff" => "application/x-font-woff"
})

map "/" do
  run lambda { |env|
    [
      200,
      {
        'Content-Type'  => 'text/html',
        'Cache-Control' => 'public, max-age=86400'
      },
      File.open('public/index.html', File::RDONLY)
    ]
  }
end

map "/what-we-do.html" do
  run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'public, max-age=86400' 
    },
    File.open('public/what-we-do.html', File::RDONLY)
  ]
}
end


map "/our-team.html" do
  run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'public, max-age=86400' 
    },
    File.open('public/our-team.html', File::RDONLY)
  ]
}
end

map "/our-companies.html" do
  run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'public, max-age=86400' 
    },
    File.open('public/our-companies.html', File::RDONLY)
  ]
}
end

map "/our-companies-detailed-page.html" do
  run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'public, max-age=86400' 
    },
    File.open('public/our-companies-detailed-page.html', File::RDONLY)
  ]
}
end

map "/our-perspective.html" do
  run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'public, max-age=86400' 
    },
    File.open('public/our-perspective.html', File::RDONLY)
  ]
}
end

map "/our-perspective-article.html" do
  run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'public, max-age=86400' 
    },
    File.open('public/our-perspective-article.html', File::RDONLY)
  ]
}
end