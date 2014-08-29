class studentfood{
    let name: String
    let food: String
    var fooddictionary:[String:String]
    
    init(name:String,food:String){
        self.name = name
        self.food = food
        fooddictionary=[name:food]
    }
    func addSD(name:String,food:String){
        fooddictionary[name] = food
    }
}
let studentfooddata = studentfood(name:"Gle",food:"shabushi")
studentfooddata.addSD("Ice",food:"pizza")
studentfooddata.fooddictionary