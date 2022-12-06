component {

    /***************************** 
      them          me
        a == rock == x == 1
        b == paper == y == 2
        c == scissors == z == 3
    *****************************/

    part1 = () => {
        var scores = {
            "A X" : 3,
            "A Y" : 6,
            "A Z" : 0,
            "B X" : 0,
            "B Y" : 3,
            "B Z" : 6,
            "C X" : 6,
            "C Y" : 0,
            "C Z" : 3
        };

        var bonus = {
            "X" : 1,
            "Y" : 2,
            "Z" : 3
        };

        var inputs = fileRead("./inputs.txt")
            .listToArray(chr(10))
            .map((input) => {
                return scores[input] + bonus[input[3]];
            })
            .reduce((previous,current) => {
                return previous + current;
            },0);

        print.line("total score part 1 = #inputs#");
    }

    part2 = () => {

        var outcomes = {
            "X" : {
                "base" : 0,
                "bonus" : {
                    "A" : 3,
                    "B" : 1,
                    "C" : 2
                }
            },
            "Y" : {
                "base" : 3,
                "bonus" : {
                    "A" : 1,
                    "B" : 2,
                    "C" : 3
                }
            },
            "Z" : { 
                "base" : 6 ,
                "bonus" : {
                    "A" : 2,
                    "B" : 3,
                    "C" : 1
                }
            }
        };

        var inputs = fileRead("./inputs.txt")
            .listToArray(chr(10))
            .map((input) => {
                var baseScore = outcomes[input[3]].base;
                var bonusScore = outcomes[input[3]]["bonus"][input[1]];
                return baseScore + bonusScore;
            })
            .reduce((previous,current) => {
                return previous + current;
            },0);

        print.line("total score part 2 = #inputs#");
    }

}