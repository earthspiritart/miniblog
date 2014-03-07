class AdminController < ApplicationController
  http_basic_authenticate_with name: "dave", password: "password"

  layout "admin"

end
