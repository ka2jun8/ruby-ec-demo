Rails.application.config.middleware.insert_before(Rack::Runtime, Rack::Rewrite) do
  rewrite   %r{/fonts/(.*)}, '/assets/$1'
end
