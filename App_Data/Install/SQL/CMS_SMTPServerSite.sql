CREATE TABLE [CMS_SMTPServerSite] (
		[ServerID]     [int] NOT NULL,
		[SiteID]       [int] NOT NULL
) 
ALTER TABLE [CMS_SMTPServerSite]
	ADD
	CONSTRAINT [PK_CMS_SMTPServerSite]
	PRIMARY KEY
	CLUSTERED
	([ServerID], [SiteID])
	
ALTER TABLE [CMS_SMTPServerSite]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_SMTPServerSite_CMS_Site]
	FOREIGN KEY ([SiteID]) REFERENCES [CMS_Site] ([SiteID])
ALTER TABLE [CMS_SMTPServerSite]
	CHECK CONSTRAINT [FK_CMS_SMTPServerSite_CMS_Site]
ALTER TABLE [CMS_SMTPServerSite]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_SMTPServerSite_CMS_SMTPServer]
	FOREIGN KEY ([ServerID]) REFERENCES [CMS_SMTPServer] ([ServerID])
ALTER TABLE [CMS_SMTPServerSite]
	CHECK CONSTRAINT [FK_CMS_SMTPServerSite_CMS_SMTPServer]