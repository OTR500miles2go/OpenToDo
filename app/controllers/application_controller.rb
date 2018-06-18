class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception, prepend: true
  protect_from_forgery unless: -> { request.format.json? }
end
