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
-- -- @name      = relative name
-- -- @exchanger = mail exchanger(fqdn)
-- -- @prio      = priority (default: 0)
-- -- @ttl       = TTL (default: user default TTL)
-- mx(name, exchanger, prio, ttl)
mx (_a, "mail.krdwrd.org", 10, ttl)

-- SRV records
-- -- @name    = relative name
-- -- @target  = host name(fqdn)
-- -- @port    = port number
-- -- @prio    = prio (default: 0)
-- -- @weight  = weight (default: 0)
-- -- @ttl     = TTL (default: user default TTL)
-- srv(name, target, port, prio, weight, ttl)
srv("_autodiscover._tcp", "autodiscover.krdwrd.org", 443)
srv("_imaps._tcp", "autodiscover.krdwrd.org", 993)
srv("_submission._tcp", "autodiscover.krdwrd.org", 587)
srv("_caldavs._tcp", "autodiscover.krdwrd.org", 443)
srv("_carddavs._tcp", "autodiscover.krdwrd.org", 443)

-- TXT records
-- -- @name    = relative name
-- -- @text    = text
-- -- @ttl     = TTL (default: user default TTL)
txt("_dmarc", "v=DMARC1; p=quarantine; rua=mailto:postmaster@iiegn.de; ruf=mailto:postmaster@iiegn.de; fo=0; adkim=r; aspf=r; rf=afrf; sp=none")
txt(_a, "v=spf1 include:iiegn.eu ~all")
txt("theta._domainkey", "v=DKIM1;k=rsa;t=s;s=email;p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDiJhJExGQfZdd0adcvtywdOLFNq3E+3/wnbHKDIw/VhMmm4ViKyUZDtDgVTj/qhAvtDEw55JEYgvG66BH3Mg0JOOUMnjU+f32VgbpMoo78JCCPjYF59hKEauCi1ICT7oPvQC88bu+yVxoB88UlKIsd3hneEWaLym8qGhbS9RDubQIDAQAB")
