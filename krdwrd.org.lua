-- File: krdwrd.org.lua
-- Zone: krdwrd.org
-- SOA record is automatically generated
-- Variable _a is replaced with zone name
-- _a = 'krdwrd.org'

-- NS records
-- automatically added

-- IPs we use
local www0_ipv4 = '185.199.108.153'
local www1_ipv4 = '185.199.109.153'
local www2_ipv4 = '185.199.110.153'
local www3_ipv4 = '185.199.111.153'

-- local www0_ipv6 = '2a04:4e42::200:403'
-- local www1_ipv6 = '2a04:4e42::400:403'
-- local www2_ipv6 = '2a04:4e42::600:403'
-- a_and_aaaa (_a, www0_ipv4, www0_ipv6, ttl)

-- MXs
local mx0_ipv4  = '95.216.59.139'
local mx0_ipv6  = '2a01:4f9:2a:122c::139'

-- Standard TTL
-- 600, 3600, 28800
local ttl = 600

-- A/AAAA records
a (_a, www0_ipv4, ttl)
a (_a, www1_ipv4, ttl)
a (_a, www2_ipv4, ttl)
a (_a, www3_ipv4, ttl)
a ("www", www0_ipv4, ttl)
--
a_and_aaaa ("mail", mx0_ipv4, mx0_ipv6, ttl)

-- MX records
-- -- @name      = relative name
-- -- @exchanger = mail exchanger(fqdn)
-- -- @prio      = priority (default: 0)
-- -- @ttl       = TTL (default: user default TTL)
-- mx(name, exchanger, prio, ttl)
mx (_a, "mail.krdwrd.org", 10, ttl)

-- TXT records
-- -- @name    = relative name
-- -- @text    = text
-- -- @ttl     = TTL (default: user default TTL)
txt("_github-challenge-krdwrd", "f42da1e9f7")
txt("_dmarc", "v=DMARC1; p=quarantine; rua=mailto:postmaster@iiegn.de; ruf=mailto:postmaster@iiegn.de; fo=0; adkim=r; aspf=r; rf=afrf; sp=none")
txt(_a, "v=spf1 include:iiegn.eu ~all")
txt("theta._domainkey", "v=DKIM1;k=rsa;t=s;s=email;p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDiJhJExGQfZdd0adcvtywdOLFNq3E+3/wnbHKDIw/VhMmm4ViKyUZDtDgVTj/qhAvtDEw55JEYgvG66BH3Mg0JOOUMnjU+f32VgbpMoo78JCCPjYF59hKEauCi1ICT7oPvQC88bu+yVxoB88UlKIsd3hneEWaLym8qGhbS9RDubQIDAQAB")
