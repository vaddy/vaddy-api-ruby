require 'net/http'
require 'uri'
require 'json'
require './vaddy_libs.rb'

API_SERVER = 'https://api.vaddy.net';

vaddy_token = ARGV[0] != nil ? ARGV[0] : ENV["VADDY_TOKEN"];
vaddy_user  = ARGV[1] != nil ? ARGV[1] : ENV["VADDY_USER"];
vaddy_host  = ARGV[2] != nil ? ARGV[2] : ENV["VADDY_HOST"];
vaddy_crawl = ARGV[3] != nil ? ARGV[3] : ENV["VADDY_CRAWL_ID"];

if( vaddy_token == nil || vaddy_user == nil || vaddy_host == nil) then
  puts "ERROR: need more argument or env."
  puts "USAGE: ruby vaddy.rb auth_key username host"
  puts "or set env VADDY_TOKEN, VADDY_USER and VADDY_HOST"
  exit(1)
end

base_info = {
  "auth_key" => vaddy_token,
  "user"     => vaddy_user,
  "fqdn"     => vaddy_host,
}

# Set CrawlID
crawl_id = nil
if( vaddy_crawl != nil && vaddy_crawl.match(/\A\d+\Z/)) then
  crawl_id = vaddy_crawl
elsif(vaddy_crawl != nil) then
  crawl_api_url = API_SERVER + "/v1/crawl"
  crawl_id = search_crawl(crawl_api_url, vaddy_crawl, base_info)
end


# start scan
puts "== Start Scan =="
start_query_hash = base_info.dup
start_query_hash["action"] = "start"
start_query_hash["crawl_id"] = crawl_id

start_url = API_SERVER + "/v1/scan"
scan_id = start_scan(start_url, start_query_hash)

if( scan_id == nil )
  puts "ERROR: Can not get scan_id"
  exit(1)
end

sleep(5)

# check status
check_query_hash = base_info.dup
check_query_hash["scan_id"] = scan_id

query_string = build_query(check_query_hash)
check_request_url = API_SERVER + "/v1/scan/result?" + query_string
status = vaddy_check( check_request_url )
exit(status)




