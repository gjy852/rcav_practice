Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })

  get('/square/:id', { :controller => "calculations", :action => "square" })

  get('/square_root/:id', { :controller => "calculations", :action => "square_root" })

  get('/random/:first_id/:second_id', { :controller => "calculations", :action => "random" })

  get('/payment/:interest_rate/:number_of_years/:principal_value', { :controller => "calculations", :action => "payment" })
end
