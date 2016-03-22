
vaddy-api-ruby
==============

VAddy ruby client  
http://vaddy.net

## Ruby version

Ruby2.0 or higher  


## Usage 
###Argument without crawl_id
If you don't specify the crawl_id option, the latest crawl_id is used for scan.

Usage: ruby vaddy.rb auth_key username(LoginID)  hostname

    ruby vaddy.rb 123455667789  ichikaway  www.examplevaddy.net 


###Argument with the crawl_id

Usage: ruby vaddy.rb auth_key username(LoginID)  hostname crawl_id(optional)

    ruby vaddy.rb 123455667789  ichikaway  www.examplevaddy.net 30


###Argument with the crawl label keyword

Usage: ruby vaddy.rb auth_key username(LoginID)  hostname crawl_label_keyword

    ruby vaddy.rb 123455667789  ichikaway  www.examplevaddy.net useredit


### ENV
export VADDY_TOKEN="123455667789"  
export VADDY_USER="ichikaway"  
export VADDY_HOST="www.examplevaddy.com"  
export VADDY_CRAWL="30"  

ruby vaddy.rb

VADDY_CRAWL is optional. If you don't specify it, VAddy uses the latest crawl data.
