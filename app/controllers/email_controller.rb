class EmailController < ApplicationController
  
  def email_from
    
  end
  
  def email_send
    @email = params["email"]
    @content = params["content"]
  end
end
