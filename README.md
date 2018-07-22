
vaddy-api-ruby
==============

VAddy ruby client  
https://vaddy.net

## Ruby version

Ruby2.0 or higher  


## Usage

You can check V1/V2 project on the dashboard screen after login.  

### V2 Project
```
export VADDY_TOKEN="123455667789"  
export VADDY_USER="ichikaway"  
export VADDY_PROJECT_ID="your project id"
#export VADDY_CRAWL_ID="30"  

ruby vaddy.rb
```

VADDY_CRAWL_ID is optional. If you don't specify it, VAddy uses the latest crawl data.


### V1 Project
```
export VADDY_TOKEN="123455667789"  
export VADDY_USER="ichikaway"  
export VADDY_HOST="www.examplevaddy.com"
#export VADDY_CRAWL_ID="30"  

ruby vaddy.rb
```

VADDY_CRAWL_ID is optional. If you don't specify it, VAddy uses the latest crawl data.
