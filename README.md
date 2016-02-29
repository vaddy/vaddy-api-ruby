vaddy-api-ruby
==============

VAddy ruby client  
http://vaddy.net

## Ruby version

Ruby2.0 or high  


## Usage 
###Argument with the latest crawl_id

ruby vaddy.rb auth_key username(LoginID)  hostname

ex. ruby vaddy.rb 123455667789  ichikaway  www.examplevaddy.net 


###Argument with the crawl_id

ruby vaddy.rb auth_key username(LoginID)  hostname crawl_id(optional)

ex. ruby vaddy.rb 123455667789  ichikaway  www.examplevaddy.net 30



### ENV
export VADDY_TOKEN="123455667789"  
export VADDY_USER="ichikaway"  
export VADDY_HOST="www.examplevaddy.com"  
export VADDY_CRAWL="30"  

ruby vaddy.rb

VADDY_CRAWL is optional. If you don't specify it, VAddy uses the latest crawl data.