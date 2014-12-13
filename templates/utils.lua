-- File: utils.lua
-- templated utility functions

function a_and_aaaa(domain, ipv4, ipv6, ttl)
  local ttl = ttl or 28800
  
  a(domain, ipv4, ttl)
  aaaa(domain, ipv6, ttl)
end
