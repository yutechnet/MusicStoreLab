--drop table dbo.STATE 

IF not exists (select * from sys.tables where name = 'State')
begin
    CREATE TABLE dbo.STATE 
    (
    Abbr nvarchar(2) NOT NULL,
    Name nvarchar(100) NOT NULL,
    Active bit NOT NULL
    )
end
GO

IF exists (select * from sys.tables where name = 'State')
AND NOT exists (select * from dbo.STATE)
BEGIN
    set nocount on
    INSERT INTO dbo.STATE (Abbr,Name,Active ) values ('AK','Alaska', 1);
    INSERT INTO dbo.STATE (Abbr,Name,Active ) values ('AL','Alabama', 1);
    INSERT INTO dbo.STATE (Abbr,Name,Active ) values ('AR','Arkansas', 1);
    INSERT INTO dbo.STATE (Abbr,Name,Active ) values ('AZ','Arizona', 1);
    INSERT INTO dbo.STATE (Abbr,Name,Active ) values ('CA','California', 1);
    INSERT INTO dbo.STATE (Abbr,Name,Active ) values ('CO','Colorado', 1);
    INSERT INTO dbo.STATE (Abbr,Name,Active ) values ('CT','Connecticut', 1);
    INSERT INTO dbo.STATE (Abbr,Name,Active ) values ('DC','District of Columbia', 1);
    INSERT INTO dbo.STATE (Abbr,Name,Active ) values ('DE','Delaware', 1);
    INSERT INTO dbo.STATE (Abbr,Name,Active ) values ('FL','Florida', 1);
    INSERT INTO dbo.STATE (Abbr,Name,Active ) values ('GA','Georgia', 1);
    INSERT INTO dbo.STATE (Abbr,Name,Active ) values ('HI','Hawaii', 1);
    INSERT INTO dbo.STATE (Abbr,Name,Active ) values ('IA','Iowa', 1);
    INSERT INTO dbo.STATE (Abbr,Name,Active ) values ('ID','Idaho', 1);
    INSERT INTO dbo.STATE (Abbr,Name,Active ) values ('IL','Illinois', 1);
    INSERT INTO dbo.STATE (Abbr,Name,Active ) values ('IN','Indiana', 1);
    INSERT INTO dbo.STATE (Abbr,Name,Active ) values ('KS','Kansas', 1);
    INSERT INTO dbo.STATE (Abbr,Name,Active ) values ('KY','Kentucky', 1);
    INSERT INTO dbo.STATE (Abbr,Name,Active ) values ('LA','Louisiana', 1);
    INSERT INTO dbo.STATE (Abbr,Name,Active ) values ('MA','Massachusetts', 1);
    INSERT INTO dbo.STATE (Abbr,Name,Active ) values ('MD','Maryland', 1);
    INSERT INTO dbo.STATE (Abbr,Name,Active ) values ('ME','Maine', 1);
    INSERT INTO dbo.STATE (Abbr,Name,Active ) values ('MI','Michigan', 1);
    INSERT INTO dbo.STATE (Abbr,Name,Active ) values ('MN','Minnesota', 1);
    INSERT INTO dbo.STATE (Abbr,Name,Active ) values ('MO','Missouri', 1);
    INSERT INTO dbo.STATE (Abbr,Name,Active ) values ('MS','Mississippi', 1);
    INSERT INTO dbo.STATE (Abbr,Name,Active ) values ('MT','Montana', 1);
    INSERT INTO dbo.STATE (Abbr,Name,Active ) values ('NC','North Carolina', 1);
    INSERT INTO dbo.STATE (Abbr,Name,Active ) values ('ND','North Dakota', 1);
    INSERT INTO dbo.STATE (Abbr,Name,Active ) values ('NE','Nebraska', 1);
    INSERT INTO dbo.STATE (Abbr,Name,Active ) values ('NH','New Hampshire', 1);
    INSERT INTO dbo.STATE (Abbr,Name,Active ) values ('NJ','New Jersey', 1);
    INSERT INTO dbo.STATE (Abbr,Name,Active ) values ('NM','New Mexico', 1);
    INSERT INTO dbo.STATE (Abbr,Name,Active ) values ('NV','Nevada', 1);
    INSERT INTO dbo.STATE (Abbr,Name,Active ) values ('NY','New York', 1);
    INSERT INTO dbo.STATE (Abbr,Name,Active ) values ('OH','Ohio', 1);
    INSERT INTO dbo.STATE (Abbr,Name,Active ) values ('OK','Oklahoma', 1);
    INSERT INTO dbo.STATE (Abbr,Name,Active ) values ('OR','Oregon', 1);
    INSERT INTO dbo.STATE (Abbr,Name,Active ) values ('PA','Pennsylvania', 1);
    INSERT INTO dbo.STATE (Abbr,Name,Active ) values ('RI','Rhode Island', 1);
    INSERT INTO dbo.STATE (Abbr,Name,Active ) values ('SC','South Carolina', 1);
    INSERT INTO dbo.STATE (Abbr,Name,Active ) values ('SD','South Dakota', 1);
    INSERT INTO dbo.STATE (Abbr,Name,Active ) values ('TN','Tennessee', 1);
    INSERT INTO dbo.STATE (Abbr,Name,Active ) values ('TX','Texas', 1);
    INSERT INTO dbo.STATE (Abbr,Name,Active ) values ('UT','Utah', 1);
    INSERT INTO dbo.STATE (Abbr,Name,Active ) values ('VA','Virginia', 1);
    INSERT INTO dbo.STATE (Abbr,Name,Active ) values ('VT','Vermont', 1);
    INSERT INTO dbo.STATE (Abbr,Name,Active ) values ('WA','Washington', 1);
    INSERT INTO dbo.STATE (Abbr,Name,Active ) values ('WI','Wisconsin', 1);
    INSERT INTO dbo.STATE (Abbr,Name,Active ) values ('WV','West Virginia', 1);
    INSERT INTO dbo.STATE (Abbr,Name,Active ) values ('WY','Wyoming', 1);
    set nocount off
END

--select *from dbo.state