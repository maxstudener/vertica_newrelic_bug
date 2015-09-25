class WelcomeController < ApplicationController
  def index
   @vertica = Vertica.connect({
  :host     => ENV['VERTICA_HOST'],
  :user     => ENV['VERTICA_USER'],
  :password => ENV['VERTICA_PASS'],
  # :ssl         => false, # use SSL for the connection
  # :port        => 5433,  # default Vertica port: 5433
  # :database    => 'db',  # there is only one database
  # :role        => nil,   # the (additional) role(s) to enable for the user.
  # :search_path => nil,   # default: <user>,public,v_catalog
  # :row_style   => :hash  # can also be :array (see below)
})
@data = @vertica.query('select 1').rows
  end 
end
