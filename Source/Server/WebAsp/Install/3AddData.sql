-- Currency
INSERT INTO CURRENCY (currencyName, symbol) VALUES (N'USD', N'$')
INSERT INTO CURRENCY (currencyName, symbol) VALUES (N'Рубли', N'руб.')
INSERT INTO CURRENCY (currencyName, symbol) VALUES (N'Euro', N'€')

-- Tariff_type
INSERT INTO TARIFF_TYPE (typeName, isActive) VALUES ('Default', 1)

-- Tariff
INSERT INTO TARIFF (tariffName, [description], typeId, currencyId, monthlyCost, dailyCost28, dailyCost29, dailyCost30, dailyCost31, maxHdd, maxUsers, maxExternalUsers)
	VALUES ('Tariff 1', '30$ per month', 1, 1, 30, 1, 1, 1, 1, 500, 50, 50)

-- Settings
INSERT INTO SETTINGS (MaxHdd, MaxUsers, MaxExternalUsers, TrialPeriod, EmailFrom, OperatorEmail, 
	DnsParentDomain, IisIpAddress, IisPort, AutoDeactivateExpired, AutoDeleteOutdated, OutdatePeriod, SendSpam, 
	SendSpamOneDayAfter, SendSpamOneWeekAfter, SendSpamOneWeekBefore, SendSpamOneDayBefore,
	OneDayAfterPeriod, OneWeekAfterPeriod, OneWeekBeforePeriod, OneDayBeforePeriod, 
	UseTariffs, SendBillableSpam, SendBillableSpam7day, SendBillableSpam3day, SendBillableSpam1day,
	SendBillableSpamNegativeBalance, AutoDeactivateUnpaid,
	SmtpServer, SmtpPort, SmtpSecureConnection, SmtpAuthenticate, SmtpUser, SmtpPassword,
	DefaultTrialPool, DefaultBillablePool)
  VALUES (100, 10, 10, 30, '', '', 
	'', '', 80, 0, 0, 30, 0,
	0, 0, 0, 0,
	1, 7, 7, 1,
	0, 0, 0, 0, 0,
	0, 0,
	'localhost', 25, 0, 0, '', '',
	'', '')

-- Trial_resellers
INSERT INTO TRIAL_RESELLERS (Title, ContactName, ContactEmail, ContactPhone, IsDefault, CommissionPercentage)
  VALUES ('Default Reseller', '', '', '', 1, 0)
