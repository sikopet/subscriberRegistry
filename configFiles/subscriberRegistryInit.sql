create table dialdata_table (
	id		INTEGER,
        exten           VARCHAR(40)     NOT NULL        DEFAULT '',
        dial		VARCHAR(128)    NOT NULL        DEFAULT '',
        PRIMARY KEY     (id)
);

CREATE TABLE 'sip_buddies'
(
id                    integer,
name                  VARCHAR(80) not null,
context               VARCHAR(80),
callingpres           VARCHAR(30) DEFAULT 'allowed_not_screened',
deny                  VARCHAR(95),
permit                VARCHAR(95),
secret                VARCHAR(80),
md5secret             VARCHAR(80),
remotesecret          VARCHAR(250),
transport             VARCHAR(10),
host                  VARCHAR(31) not null,
nat                   VARCHAR(5) DEFAULT 'no' not null,
type                  VARCHAR(10) DEFAULT 'friend' not null,
accountcode           VARCHAR(20),
amaflags              VARCHAR(13),
callgroup             VARCHAR(10),
callerid              VARCHAR(80),
defaultip             VARCHAR(40) DEFAULT '0.0.0.0',
dtmfmode              VARCHAR(7) DEFAULT 'rfc2833',
fromuser              VARCHAR(80),
fromdomain            VARCHAR(80),
insecure              VARCHAR(4),
language              CHAR(2),
mailbox               VARCHAR(50),
pickupgroup           VARCHAR(10),
qualify               CHAR(3),
regexten              VARCHAR(80),
rtptimeout            CHAR(3),
rtpholdtimeout        CHAR(3),
setvar                VARCHAR(100),
disallow              VARCHAR(100) DEFAULT 'all',
allow                 VARCHAR(100) DEFAULT 'ulaw' not null,
fullcontact           VARCHAR(80),
ipaddr                VARCHAR(40),
port                  int(5) DEFAULT 0,
username              VARCHAR(80),
defaultuser           VARCHAR(80),
subscribecontext      VARCHAR(80),
directmedia           VARCHAR(3),
trustrpid             VARCHAR(3),
sendrpid              VARCHAR(3),
progressinband        VARCHAR(5),
promiscredir          VARCHAR(3),
useclientcode         VARCHAR(3),
callcounter           VARCHAR(3),
busylevel             int(11),
allowoverlap          VARCHAR(3) DEFAULT 'yes',
allowsubscribe        VARCHAR(3) DEFAULT 'yes',
allowtransfer         VARCHAR(3) DEFAULT 'yes',
ignoresdpversion      VARCHAR(3) DEFAULT 'no',
template              VARCHAR(100),
videosupport          VARCHAR(6) DEFAULT 'no',
maxcallbitrate        int(11),
rfc2833compensate     VARCHAR(3) DEFAULT 'yes',
'session-timers'      VARCHAR(10) DEFAULT 'accept',
'session-expires'     int(6) DEFAULT 1800,
'session-minse'       int(6) DEFAULT 90,
'session-refresher'   VARCHAR(3) DEFAULT 'uas',
t38pt_usertpsource    VARCHAR(3),
outboundproxy         VARCHAR(250),
callbackextension     VARCHAR(250),
registertrying        VARCHAR(3) DEFAULT 'yes',
timert1               int(6) DEFAULT 500,
timerb                int(9),
qualifyfreq           int(6) DEFAULT 120,
contactpermit         VARCHAR(250),
contactdeny           VARCHAR(250),
lastms                int(11) DEFAULT 0 not null,
regserver             VARCHAR(100),
regseconds            int(11) DEFAULT 0 not null,
useragent             VARCHAR(100),
cancallforward        CHAR(3) DEFAULT 'yes' not null,
canreinvite           CHAR(3) DEFAULT 'yes' not null,
mask                  VARCHAR(95),
musiconhold           VARCHAR(100),
restrictcid           CHAR(3),
calllimit             int(5),
WhiteListFlag         timestamp not null default '0',
WhiteListCode         varchar(8) not null default '0',
rand                  varchar(33) default '',
sres                  varchar(33) default '',
ki                    varchar(33) default '',
kc                    varchar(33) default '',
a3_a8                 varchar(45) default NULL,
primary key(id)
) 
;
