public class RankHandler {
    //1 => gold
    //2 -> silver
    //3 -> bronze
    //top 10 -> top 10 (iron)
    //more 10 -> aluminium
    public string rankPrize(integer rank){
        string prize = '';
        
        //code to set value of prize
        if (rank == 1) {
            prize = 'Gold';
        } else if(rank == 2){
            prize = 'Silver';
        } else if(rank  == 3){
            prize = 'Bronze';
        } else {
            if (rank <= 10) {
                prize = 'Iron';
            } else {
                prize = 'Aluminium';
            }
        }
        return prize;
    }
}