
vaddy-api-ruby
==============

VAddy ruby client  
http://vaddy.net

## Ruby version

Ruby2.0 or higher  


## Usage 
###Argument without crawl_id(V1 API)
If you don't specify the crawl_id option, the latest crawl_id is used for scan.

Usage: ruby vaddy.rb auth_key username(LoginID)  hostname

    ruby vaddy.rb 123455667789  ichikaway  www.examplevaddy.net 


###Argument with the crawl_id(V1 API)

Usage: ruby vaddy.rb auth_key username(LoginID)  hostname crawl_id(optional)

    ruby vaddy.rb 123455667789  ichikaway  www.examplevaddy.net 30


###Argument with the crawl label keyword(V1 API)

Usage: ruby vaddy.rb auth_key username(LoginID)  hostname crawl_label_keyword

    ruby vaddy.rb 123455667789  ichikaway  www.examplevaddy.net useredit


### ENV(V1, V2 API)
export VADDY_TOKEN="123455667789"  
export VADDY_USER="ichikaway"  
export VADDY_HOST="www.examplevaddy.com" # for V1 API 
export VADDY_PROJECT_ID="your project id" # for V2 API
export VADDY_CRAWL_ID="30"  

ruby vaddy.rb

VADDY_CRAWL_ID is optional. If you don't specify it, VAddy uses the latest crawl data.
