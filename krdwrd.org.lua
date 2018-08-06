-- File: krdwrd.org.lua
-- Zone: krdwrd.org
-- SOA record is automatically generated
-- Variable _a is replaced with zone name
-- _a = 'krdwrd.org'

-- NS records
-- automatically added

-- IPs we use
local www_ipv4 = '5.9.213.222'
local www_ipv6 = '2a01:4f8:162:13e1::222'
local proxy_ipv4 = '5.9.213.220'
-- MXs
local mx0_ipv4  = '95.216.59.139'
local mx0_ipv6  = '2a01:4f9:2a:122c::139'

-- Standard TTL
-- 600, 3600, 28800
local ttl = 600

-- A/AAAA records
a_and_aaaa (_a, www_ipv4, www_ipv6, ttl)
a_and_aaaa ("www", www_ipv4, www_ipv6, ttl)
a ("proxy", proxy_ipv4, ttl)
a ("*", www_ipv4, ttl)
--
a_and_aaaa ("mail", mx0_ipv4, mx0_ipv6, ttl)
a_and_aaaa ("autodiscover", mx0_ipv4, mx0_ipv6, ttl)
a_and_aaaa ("autoconfig", mx0_ipv4, mx0_ipv6, ttl)

-- MX records
mx (_a, "mail.krdwrd.org", 10, ttl)
