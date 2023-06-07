public class SetDemo {
    public static void citySet(){
        //set of string
        set<string> cities = new Set<String>();
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Nairobi');
        cities.add('Berlin');
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Nairobi');
        cities.add('LISBON');
        system.debug('cities set ' + cities);

    }
    public static void randomIntegerSet(){
        Set<integer> intSet = new Set<integer>();
        intSet.add(15);
        intSet.add(21);
        intSet.add(10);
        intSet.add(15);
        intSet.add(15);
        intSet.add(10);
        system.debug('int set ==> ' + intSet);
    }
    public static void setFromList(){
        //we will create set from list
        list<integer> l1 = new List<Integer>{10,15,77,55,99,10,77,55};
        system.debug('l1 ==> ' + l1);

        //create new set,and all elements from list to set
        list<integer> s1 = new List<Integer>();
        s1.addAll(l1);//addAll method we can add ALL elements from another list or set.
        system.debug('s1 ==> ' + s1);
    }
    //we will pass list<integer> in below method, and it will return us set<integer>
    public static set<integer> setFromList(list<integer> intList) {
        system.debug('l1 from parameter => ' + intList);
        Set<Integer> s1 = new Set<Integer>();
        s1.addAll(intList); //add all elements from list to set)

        return s1;

    }
}