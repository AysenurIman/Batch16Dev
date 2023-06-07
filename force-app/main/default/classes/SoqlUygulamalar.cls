public class SoqlUygulamalar {

    public static void selectIndustry(string indstry) {
        //Account recordlarindan industry Education olanlarin listesinin record sayisini bulup her bir accountun ismini tek tek yazdiralim.
        
        //List<Account> accList = [select id, name, industry from account where industry = 'Education'];
        System.debug('========selectIndustry Metodu Calisti==========');
        List<Account> accList = [select id, name, industry from account where industry = :indstry];

        System.debug('listemiz = ' + accList);
        integer recordSayisi = accList.size();
        System.debug('Accountlarin record sayilari = '+ recordSayisi);
        for (account acc : accList) {
            System.debug('record = ' + acc);
            System.debug('==================');
            System.debug('name = ' + acc.name);
            System.debug('industry = '+ acc.Industry);
            System.debug('==================');
        }
        System.debug('===========Metot bitti================');
    }

    public static void childToParent() {
        //Contactlari bagli olduklari accountlarin name ve annualRevenue leri ile beraber getirelim.. annualRevenue bos olanlar gelmesin
        List<Contact> conList = [select id, name, account.name, account.annualRevenue from contact where account.annualRevenue != null];
        System.debug('Listemin record sayisi = ' + conList.size());
        for (contact con : conList) {
            System.debug(con.name + ' contactinin bagli oldugu accountun name = ' + con.account.name + ' ve bu accountun yillik cirosu = ' + con.account.AnnualRevenue);
        }
    }
    
}