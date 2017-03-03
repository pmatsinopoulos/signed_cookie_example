class CookiesController < ApplicationController
  def store
    # create a signed cookie
    cookies.signed[:visitor_recognised_signed] = "Hello There!"
  end

  def read
    @cookie_value = cookies.signed[:visitor_recognised_signed]
  end
end
