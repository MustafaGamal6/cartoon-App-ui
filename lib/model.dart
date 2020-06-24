
class CardDetails {
  String imgurl;
  String name;
  String size;
  String power;
  double rate;
  int number;
  List<String> posters;

  CardDetails(
    {
      this.imgurl,
      this.name,
      this.size,
      this.power,
      this.rate,
      this.number,
      this.posters
    }
  );

}

List<CardDetails> carddetails =[

    CardDetails(
     imgurl: "images/angrybird.png",
     name: "Angry Bird",
     size: 'mediam',
     power: 'speed',
     rate: 2.8,
     number: 7,
     posters: [
       'images/angrybird.png',
       'images/angrybird.png'  
     ]
    ),
    CardDetails(
     imgurl: "images/sanfor.png",
     name: "Sanfoor",
     size: 'small',
     power: 'speed',
     rate: 9.1,
     number: 8,
     posters: [
       "images/sanfor.png",
       "images/sanfor.png"
     ]
    ),
    CardDetails(
     imgurl: "images/charcter.png",
     name: "BARBIAN",
     size: 'mediam',
     power: 'speed',
     rate: 8.8,
     number: 2,
     posters: [
       "images/clash.png",
       "images/clash2.png"
     ]
    ),
    CardDetails(
     imgurl: "images/car1.png",
     name: "CAR",
     size: 'mediam',
     power: 'speed',
     rate: 6.4,
     number: 4,

     posters: [
       "images/mycar.png",
       "images/mycar.png"
     ]
    ),

    CardDetails(
     imgurl: "images/cartoon.png",
     name: "LION",
     size: 'mediam',
     power: 'strong',
     rate: 7.7,
     number: 5,
     posters: [
       "images/cartoon.png",
       "images/cartoon.png"
     ]
    ),
    
  ];