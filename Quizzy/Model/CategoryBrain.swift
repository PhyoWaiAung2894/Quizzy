//
//  CategoryBrain.swift
//  Quizzy
//
//  Created by PhyoWai Aung on 12/2/23.
//

import Foundation

struct CategoryBrain {
    
    var categorynumber = 0
    var quizQuestionNumber = 0
    var score = 0
    
    let categoryQuiz = [
        Category(title: "Science Quiz", questions: [
            Question(q: "Green plant can create their own food(sugar) from water,sunlight and...", a: ["Carbondioxide", "Nitrogen", "Hydrogen"], correctAnswer: "Carbondioxide"),
            Question(q: "Which animal uses gills to breath?", a: ["Whale", "Sharks", "Dolphins"], correctAnswer: "Shark"),
            Question(q: "Which planet is considered gaseous?", a: ["Neptune", "Venus", "Pluto"], correctAnswer: "Neptune"),
            Question(q: "A frie cannot burn without..", a: ["Carbondioxide", "Oxygen", "Nitrogen"], correctAnswer: "Oxygen"),
            Question(q: "The speed of light in vacuum is..", a: ["299 792 458m/s", "899 493 599m/s", "99 798 786m/s"], correctAnswer: "299 792 458m/s"),
            Question(q: "A liquid of Ph 6 is...", a: ["Netural", "Acidic", "Akaline(basic)"], correctAnswer: "Acidic")
        ]),
        
        Category(title: "Lord of the Rings Quiz", questions: [
            Question(q: "What is the name of Gandalf's horse?", a: ["Hasufel","Shadowfax", "Snowmane"], correctAnswer: "Shadowfax"),
            Question(q: "Who was Helm's Deep named after?", a: ["HelmHammerfist","HelmHardhead","HelmHammerhand"], correctAnswer: "HelmHammerhand"),
            Question(q: "What is Lord Denthor's official title?", a: ["LordProtector ofGondor","Steward ofGondor","King ofGondor"], correctAnswer: "Steward ofGondor"),
            Question(q: "How many arrows did it take to kill Boromir?", a: ["3","5","6"], correctAnswer: "3"),
            Question(q: "What mines do the Fellowship travel through?", a: ["Moria","Iron Hills","The BlueMountains"], correctAnswer: "Moria"),
            Question(q: "What was the name of Sam's pony?", a: ["Ben","Bill","Bob"], correctAnswer: "Bill")
        ]),
        
        Category(title: "Studio Ghibli Fans Quiz", questions: [
            Question(q: "In what year was Studio Ghibli founded?", a: ["1984","1985","1986"], correctAnswer: "1985"),
            Question(q: "Which one of these films was Miyazaki NOT the director of?", a: ["SpiritedAway","MyNeighbourTotoro","Grave oftheFireflies"], correctAnswer: "Grave oftheFireflies"),
            Question(q: "In Pom Poko, what art form are the raccoons studying?", a: ["Dancing","Transformation","Being alone"], correctAnswer: "Transformation")
        ]),
        Category(title: "Harry Potter Quiz", questions: [
            Question(q: "Which is the longest of the Harry Potter books?", a: ["HarryPotter andthe Gobletof Fire","HarryPotter andthe DeathlyHallows","HarryPotter andthe Orderof thePhoenix"], correctAnswer: "HarryPotter andthe Orderof thePhoenix"),
            Question(q: "What do you have to say to open the The Marauder's Map?", a: ["I solemnlyswear that Iam up to nogood","I solemnlyswear that Iam up tomischief","I solemnlyswear that Iam up to upto trouble"], correctAnswer: "I solemnlyswear that Iam up to nogood"),
            Question(q: "Which breed of animal does NOT appear in the books?", a: ["Hippogriff","Griffin","Hydra"], correctAnswer: "Hydra"),
            Question(q: "What name does Slughorn incorrectly call Ron?", a: ["Rupert","Ronald","Robert"], correctAnswer: "Rupert"),
            Question(q: "Harry's wand featured a feather from what type of animal?", a: ["Phoenix","Owl","Griffin"], correctAnswer: "Phoenix")
        ]),
        Category(title: "Country Quiz", questions: [
            Question(q: "What is the capital of china?", a: ["Santiago", "Beijing", "Havana"], correctAnswer: "Beijing"),
            Question(q: "What is the capital of Finland?", a: ["Conakry", "Prague", "Helsinki"], correctAnswer: "Helsinki"),
            Question(q: "What is the capital of Cameroon?", a: ["Bujumbura", "Yaounde", "Gaborone"], correctAnswer: "Yaounde"),
            Question(q: "What is the capital of Egypt?", a: ["San Jose", "Cairo", "Moroni"], correctAnswer: "Cairo"),
            Question(q: "The Capital of Tanzania is?", a: ["Nairobi", "Lusaka", "Kampala", "Dar-es-Salaam"], correctAnswer: "Dar-es-Salaam"),
            Question(q: "What is the capital of Nigeria?", a: ["Monaco", "Abuja", "Podgorica"], correctAnswer: "Abuja"),
            Question(q: "Which is the capital of Afghanistan?", a: ["Kabul", "Moroni", "Jalabad", "Kandahar"], correctAnswer: "Kabul"),
            Question(q: "Which is the capital of Algeria?", a: ["Tokyo", "Algiers", "Vientiane", "Brazzaville"], correctAnswer: "Algiers"),
            Question(q: "Which is the capital of Australia?", a: ["Amman", "Belgrade", "Canberra", "Podgorica"], correctAnswer: "Canberra"),
            Question(q: "Which is the capital of Bahrain?", a: ["Quito", "Manama", "Sharjah", "Chisinau"], correctAnswer: "Manama"),
            Question(q: "Which is the capital of Belgium?", a: ["Athens", "Lome", "Skopje", "Brussels"], correctAnswer: "Brussels"),
            Question(q: "Which is the capital of Cyprus?", a: ["Nicosia", "Freetown", "Jerusalem", "Brazzaville"], correctAnswer: "Nicosia"),
            Question(q: "Which is the capital of France?", a: ["Paris", "Castries", "Canberra", "Basseterre"], correctAnswer: "Paris"),
            Question(q: "Which is the capital of The Gambia?", a: ["Apia", "Banjul", "Maseru", "Copenhagen"], correctAnswer: "Banjul"),
            Question(q: "Which is the capital of Germany?", a: ["Berlin", "Harare", "Rangoon", "Frankfurt"], correctAnswer: "Berlin"),
            Question(q: "Which is the capital of Hungary?", a: ["Budapest", "Damascus", "Mogadishu", "San Salvador"], correctAnswer: "Budapest"),
            Question(q: "Which is the capital of Ireland?", a: ["Dublin", "Vienna", "Luanda", "Asuncion"], correctAnswer: "Dublin"),
            Question(q: "Which is the capital of Japan?", a: ["Caracas", "Tokyo", "Bangkok", "Freetown"], correctAnswer: "Tokyo")
        ]),
        Category(title: "Invertebrates Quiz", questions: [
            Question(q: "What is an invertebrate?", a: ["An animal with a backbone", "a mammal", "An animal without a backbone", "birds"], correctAnswer: "An animal without a backbone"),
            Question(q: "Arthropods have an outer covering called a(n)_________", a: ["endoskeleton", "bones", "exoskeleton", "armor"], correctAnswer: "exoskeleton"),
            Question(q: "Which of the following is an example of a crustacean?", a: ["squid", "crab", "earth worm", "bumble bee"], correctAnswer: "crab"),
            Question(q: "I have a soft-body, a hard shell, and live on land and water.  What am I?", a: ["Mollusk", "Cnidarian", "Arthropod", "Echinoderm"], correctAnswer: "Mollusk"),
            Question(q: "Between 90-95% of all animals on earth can be classified as _____.", a: ["invertebrates", "vertebrates", "reptiles", "mammals"], correctAnswer: "invertebrates"),
            Question(q: "What type of symmetry do Arthropods have?", a: ["Radial", "Bilateral", "Asymmetrical"], correctAnswer: "Bilateral"),
            Question(q: "Lobster, shrimp, and crabs are examples of what group of Arthropods?", a: ["Chilopoda", "Diplopoda", "Crustaceans", "Arachnida"], correctAnswer: "Crustaceans"),
            Question(q: "All arthropods have segmented bodies, jointed appendages, and ________________.", a: ["tails", "lungs", "wings", "an exoskeleton"], correctAnswer: "an exoskeleton"),
            Question(q: "The removing and replacing of old exoskeleton is called", a: ["metamorphosis", "replacement", "molting", "exoing"], correctAnswer: "molting"),
            Question(q: "I have a round body divided into segments and my digestive tract has two openings.", a: ["Echinoderm", "Cnidarian", "Annelid", "Annelid"], correctAnswer: "Annelid"),
            Question(q: "I have a digestive cavity with one opening, and have tentacles. I am a hydra.", a: ["Echinoderm", "Cnidarian", "Arthropod", "Mollusk"], correctAnswer: "Cnidarian"),
            Question(q: "I have three pairs of legs and a body divided into three sections. As a butterfly, I have wings.", a: ["Echinoderm", "Annelid", "Arthropod", "Mollusk"], correctAnswer: "Arthropod"),
            Question(q: "Which of the following is an example of a crustacean?", a: ["squid", "crab", "earth worm", "bumble bee"], correctAnswer: "crab"),
            Question(q: "What are some characteristics of sponges?", a: ["Have some tissues", "Have stinging cells, and Take food into a body central cavity.", "Adults are stationary Take food into their bodies for energy", "Jellyfish Sea anemone"], correctAnswer: "Adults are stationary Take food into their bodies for energy"),
            Question(q: "Which animal is responsible for the first complete digestive system?", a: ["Roundworms", "Octupus", "Thirteen line ground squirrel", "Hydra"], correctAnswer: "Roundworms"),
            Question(q: "Which animal belongs to the Kingdom Animalia?", a: ["Sponge", "Amoeba", "Paramecium", "Euglena"], correctAnswer: "Sponge"),
            Question(q: "Which is not a main class within the phylum of mollusca?", a: ["crustacean", "cephalopod", "gastropod", "bivalve"], correctAnswer: "crustacean"),
            Question(q: "Which of the following is a cephalopod?", a: ["snail", "slug", "oyster", "octopus"], correctAnswer: "octopus"),
            Question(q: "Which phylum is mainly asymmetrical?", a: ["cnidaria", "porifera (sponges)", "echinodermata", "echinodermata"], correctAnswer: "porifera (sponges)")
        ]),
        
        Category(title: "Food Web Quiz", questions: [
            Question(q: "A plant being eaten by a herbivorous which in turn is eaten by a carnivorous makes", a: ["Food chain", "Food web", "Omnivorous", "Interdependent"], correctAnswer: "Food chain"),
            Question(q: "In a food chain of grassland ecosystem, the top consumers are", a: ["Carnivores", "Herbivores", "Either carnivores or herbivores", "Bacteria"], correctAnswer: "Carnivores"),
            Question(q: "A food chain starts with", a: ["Nitrogen fixing organisms", "Photosynthesis", "Respiration", "Decomposers"], correctAnswer: "Photosynthesis"),
            Question(q: "In food web hyaenas and vultures are", a: ["Primary consumers", "Predators", "Scavengers", "Decomposers"], correctAnswer: "Scavengers"),
            Question(q: "In a food web, each successive trophic level has", a: ["Increased total energy", "Less total energy content", "More total energy content", "Non estimated energy content"], correctAnswer: "Less total energy content"),
            Question(q: "Which of the following food chain may not be directly dependent upon solar energy?", a: ["Grazing", "Detritus", "Soaking", "Depleting"], correctAnswer: "Detritus"),
            Question(q: "In a food chain, the total amount of living material is depicted by", a: ["Pyramid of energy", "Pyramid of numbers", "Pyramid of biomass", "All of these"], correctAnswer: "Pyramid of biomass"),
            Question(q: "In a food chain herbivores are", a: ["Primary producers", "Primary consumers", "Secondary consumers", "Decomposers"], correctAnswer: "Primary consumers"),
            Question(q: "In an ecosystem, there are more prey than predators. This relationship is called", a: ["Food webs", "Predator–prey relationship", "Pyramid of number", "Succession"], correctAnswer: "Pyramid of number"),
            Question(q: "Food chain consists of", a: ["Producer, consumer and decomposer", "Producer, carnivore and decomposer", "Producer and primary consumer", "Producer, herbivore and carnivore"], correctAnswer: "Producer, consumer and decomposer"),
            Question(q: "The large carnivores or the tertiary consumers exist at which level of the food chain __", a: ["First", "Second", "Third", "Fourth"], correctAnswer: "Fourth"),
            Question(q: "Ecosystem has two components", a: ["Plants and animals", "Weeds and trees", "Biotic and abiotic", "Frog and men"], correctAnswer: "Biotic and abiotic"),
            Question(q: "In a food chain, which of the following produces in the largest amount", a: ["Producers", "Decomposers", "Tertiary consumers", "Primary consumers"], correctAnswer: "Producers")
        ]),
        
        Category(title: "Renewable Energy Quiz", questions: [
            Question(q: "What is the tip speed ratio of savonius wind turbine rotor?", a: ["1", "3", "5", "7"], correctAnswer: "1"),
            Question(q: "Which of the following is a disadvantage of renewable energy?", a: ["High pollution", "Available only in few places", "High running cost", "Unreliable supply"], correctAnswer: "Unreliable supply"),
            Question(q: "A Solar cell is an electrical device that converts the energy of light directly into electricity by the", a: ["Photovoltaic effect", "Chemical effect", "Atmospheric effect", "Physical effect"], correctAnswer: "Photovoltaic effect"),
            Question(q: "In hydroelectric power, what is necessary for the production of power throughout the year?", a: ["Dams filled with water", "High amount of air", "High intense sunlight", "Nuclear power"], correctAnswer: "Dams filled with water"),
            Question(q: "The main composition of biogas is", a: ["Methane", "Carbon dioxide", "Nitrogen", "Hydrogen"], correctAnswer: "Methane"),
            Question(q: "Which among the following have a large amount of installed grid interactive renewable power capacity in India?", a: ["Wind power", "Solar power", "Biomass power", "Small Hydro power"], correctAnswer: "Wind power"),
            Question(q: "Which of the following is not under the Ministry of New and Renewable Energy?", a: ["Wind power", "Solar power", "Biomass power", "Large hydro"], correctAnswer: "Large hydro"),
            Question(q: "Which one of the following energy uses windmills for mechanical power?", a: ["Wind power", "Solar power", "Biomass power", "Large hydro"], correctAnswer: "Wind power"),
            Question(q: "Which of the following are the renewable energy resources?", a: ["Solar", "Wave", "Wind", "All of the above"], correctAnswer: "All of the above"),
            Question(q: "Are the non-renewable energy resources?", a: ["Nuclear energy", "Fossil fuels", "Both a and b", "None of the above"], correctAnswer: "Both a and b"),
            Question(q: "What are the advantages of solar power?", a: ["Sunlight is free", "Doesn't produce the greenhouse effect", "Both a and b", "None of the above"], correctAnswer: "Both a and b"),
            Question(q: "What is the source of solar energy?", a: ["Wind", "Waves", "Sunlight", "None of the above"], correctAnswer: "Sunlight")
        ]),
        
        Category(title: "Fiber Quiz", questions: [
            Question(q: "The harvested stalks of the jute plant are soaked in water for a few days until they start rotting. This process is called", a: ["retting", "ginning", "knitting", "Both a and b"], correctAnswer: "retting"),
            Question(q: "The process of soaking jute stalks in water to let those rot.", a: ["retting", "ginning", "knitting", "Both a and b"], correctAnswer: "retting"),
            Question(q: "The processing of cotton involves the following steps - picking, _______________ and spinning.", a: ["retting", "ginning", "knitting", "Both a and b"], correctAnswer: "ginning"),
            Question(q: "Jute grows well in___________ soil", a: ["Alluvial", "Black", "Loamy", "Sandy"], correctAnswer: "Alluvial"),
            Question(q: "Fibres obtained from plants and animals are called", a: ["Animal fibre", "Plant fibre", "Synthetic fibre", "Natural fibre"], correctAnswer: "Natural fibre"),
            Question(q: "Which fibre is used for making gunny bags?", a: ["Wool", "Plant fibre", "Synthetic fibre", "Jute"], correctAnswer: "Jute"),
            Question(q: "Which of the following fibre is not obtained from the animal", a: ["Leather", "Wool", "Silk cotton", "Silk"], correctAnswer: "Silk cotton"),
            Question(q: "Second most widely used fibre after cotton is", a: ["Leather", "Wool", "Jute", "Silk"], correctAnswer: "Jute"),
            Question(q: "Retting is carried out in jute", a: ["After weaving", "After spinning", "Before spinning", "None of these"], correctAnswer: "Before spinning"),
            Question(q: "Wool & silk are-", a: ["Aminal fibre", "Synthetic fibre", "Animal fibre", "None of these"], correctAnswer: "Animal fibre"),
            Question(q: "Cotton, wool, silk are examples of ____", a: ["Plant Fibres", "Animal Fibres", "Natural Fibres", "Synthetic Fibres"], correctAnswer: "Natural Fibres"),
            Question(q: "The fleece of the lamb refers to _____", a: ["A popular sheep breed", "The white colour of the fur", "Hairy fibres of the sheep", "All of the above"], correctAnswer: "The white colour of the fur")
        ])
        
    ]
    
    
    
    func getCorrectAnswer() -> String {
        return categoryQuiz[categorynumber].questions[quizQuestionNumber].rightAnswer
    }
    
    func getAnswers() -> [String] {
        return categoryQuiz[categorynumber].questions[quizQuestionNumber].answers
    }
    
    func getScore() -> Int {
        return score
    }
    
    func getText() -> String {
        return categoryQuiz[categorynumber].title
    }
    
    func getQuizQuestion() -> String {
        return categoryQuiz[categorynumber].questions[quizQuestionNumber].text
    }
    
    func getProgress() -> Float {
        return Float(quizQuestionNumber) / Float(categoryQuiz[categorynumber].questions.count)
    }
    
    func totalScore() -> Int {
        return categoryQuiz[categorynumber].questions.count
    }
    
    mutating func nextQuestion() {
        if quizQuestionNumber + 1 < categoryQuiz[categorynumber].questions.count {
            quizQuestionNumber += 1
        }else {
            quizQuestionNumber = 0
        }
    }
    
    mutating func continueOrExit() -> Bool {
        if quizQuestionNumber + 1 == categoryQuiz[categorynumber].questions.count {
            return true
        }else {
            return false
        }
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        if userAnswer == categoryQuiz[categorynumber].questions[quizQuestionNumber].rightAnswer {
            score += 1
            return true
        } else {
            return false
        }
        
    }
}
