-- File: krdwrd.org.lua
-- Zone: krdwrd.org
-- SOA record is automatically generated
-- Variable _a is replaced with zone name
-- _a = 'krdwrd.org'

-- NS records
-- automatically added

-- IPs we use
local main_ipv4 = '5.9.213.220'
local main_ipv6 = '2a01:4f8:162:13e1::220'
-- MXs
local mx0_ipv4  = '5.9.135.244'
local mx0_ipv6  = '2a01:4f8:162:13e1::244'

-- Standard TTL
local ttl = 28800

-- A/AAAA records
a_and_aaaa (_a, main_ipv4, main_ipv6, ttl)
a_and_aaaa ("www", main_ipv4, main_ipv6, ttl)
a ("proxy", main_ipv4, ttl)
a ("*", main_ipv4, ttl)
--
a_and_aaaa ("mail", mx0_ipv4, mx0_ipv6, ttl)

-- MX records
mx (_a, "mail.krdwrd.org", 10, ttl)
