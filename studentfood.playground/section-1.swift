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
    func showstudent(allstudent:Dictionary<String,String>){
        for (key,value) in allstudent{
            fooddictionary[key] = value
            println("key:\(key) value:\(value)")
        }
        for showName in allstudent.keys{
            println("name:\(showName)")
        }
        for showfood in allstudent.values{
            println("food:\(showfood)")
        }
    }
}
let studentfooddata = studentfood(name:"Gle",food:"shabushi")
studentfooddata.addSD("Ice",food:"pizza")
studentfooddata.fooddictionary
studentfooddata.showstudent(["Fai":"swensen"])

