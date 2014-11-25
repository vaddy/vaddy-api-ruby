def build_query(query_hash = {})
  query_string = (query_hash||{}).map{|k,v|
    URI.encode(k.to_s) + "=" + URI.encode(v.to_s)
  }.join("&")
  return query_string 
end


def start_scan(request_url, start_query_hash)

  uri = URI.parse( request_url );

  response = Net::HTTP.post_form(uri, start_query_hash)
  result = JSON.parse(response.body)

  puts result
  scan_id = result["scan_id"];
  return scan_id
end


def vaddy_check(request_url) 
  uri = URI.parse( request_url );

  retry_count = 0
  while retry_count < 200 do
    response = Net::HTTP.get(uri)
    result = JSON.parse(response)
    if( result["status"] != "scanning" ) then
      break;
    end
    retry_count = retry_count + 1
    puts "#{result["status"]} ... #{retry_count}"
    sleep(20)
  end

  if( result["alert_count"] == nil || result["alert_count"] > 0 ) then
    puts "----ERROR----"
    puts "status : #{result["status"]}"
    puts "problems : #{result["alert_count"]}"
    puts result
    return 1;
  else
    puts "SUCCESS. No problem."
    puts result
    return 0;
  end
  return 1;
end



