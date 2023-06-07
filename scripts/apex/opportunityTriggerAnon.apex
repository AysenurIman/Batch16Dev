Opportunity opp = new Opportunity();
opp.Name = 'Opp trigger';
opp.StageName = 'Prospecting';
opp.CloseDate = date.today().addDays(60);
insert opp;

opp.Name += ' update';
update opp; 