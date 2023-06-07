account a = new account();
a.name = 'acc trigger 06';
insert a;

list<account> listAcc = new list<account>();
for (Integer i = 0; i < 3; i++) {
    account ac = new account();
    ac.Name = 'test trigger acc ' + i;
    listAcc.add(ac);
}

insert listAcc;

Map<integer, string> map1 = new map<integer, string>{1=>'one', 2=> 'two'};
set<integer> allKeys = map1.keySet();
system.debug('all keys => ' + allKeys);