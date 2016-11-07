Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })

  get("/square/:id", { :controller => "calculations", :action => "square" })

  get("/square_root/:id", { :controller => "calculations", :action => "square_root" })

  get("/random/:first/:last", { :controller => "calculations", :action => "random" })

  get("/payment/:int/:yr/:p", { :controller => "calculations", :action => "payment" })
end
