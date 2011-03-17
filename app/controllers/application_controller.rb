class ApplicationController < ActionController::Base
  protect_from_forgery
  
  $DEFAULT_EMAIL = 'talin+tipster@codeforamerica.org'
end
