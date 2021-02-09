var jsonData = [
    {
        "q" : "Two resistors R1 and R2 of 4 and 6 ohm are connected in parallel across a battery.The ration of power dissipated in them p1 : p2 will be?",
        "opt1" : "4:9",
        "opt2" : "3:2",
        "opt3" : "9:4",
        "opt4" : "1:4",
    },
    {
        "q" : "A wire of resistance 8R is bent in the form of a circle as shown. What is the resistance between the ends of diameter AB?",
        "opt1" : "2R",
        "opt2" : "3R",
        "opt3" : "4R",
        "opt4" : "5R",
    },
    {
        "q" : "A 10V battery of negligible internal resistance is connected across a 200V battery and resistance of 38Ω. Find the value of current in the circuit.",
        "opt1" : "5A",
        "opt2" : "6A",
        "opt3" : "7A",
        "opt4" : "9A",
    },
    {
        "q" : "A potentiometer wire of length 1m has a resistance of 10Ω. It is connected to a 6V battery in series with a resistance of 5Ω. Determine the emf of the primary cell which gives a balance point at 40cm. ",
        "opt1" : "1.5 V",
        "opt2" : "1.6 V",
        "opt3" : "1.8 V",
        "opt4" : "1.95 V",
    },
    {
        "q" : "Earth’s magnetic field and the angle of dip at a point is 0.3G and 30°. Calculate the vertical component of Earth’s magnetic field. ",
        "opt1" : "0.15",
        "opt2" : "0.20",
        "opt3" : "0.25",
        "opt4" : "0.35",
    },
    {
      "q" : "Earth’s magnetic field and the angle of dip at a point is 1.3G and 60°. Calculate the vertical component of Earth’s magnetic field. ",
      "opt1" : "0.115",
      "opt2" : "0.250",
      "opt3" : "0.225",
      "opt4" : "0.350",
    },
    {
      "q" : "The probability of a man hitting a target is 14. How many times must he fire so that the probability of his hitting the target at least once is greater than 23?",
      "opt1" : "4",
      "opt2" : "3",
      "opt3" : "2",
      "opt4" : "1",
    },
    {
      "q" : "	Of the following name/symbol combinations of elements, which one is WRONG?",
      "opt1" : "uranium/U ",
      "opt2" : "nitrogen/Na ",
      "opt3" : "nitrogen/Ni ",
      "opt4" : "manganiz/ma ",
    },
    {
      "q" : "Nitric acid is a very important industrial chemical: 1.612 x 1010 pounds of it were produced in 1992. If the density of nitric acid is 12.53 pounds/gallon, what volume would be occupied by this quantity? (1 gallon = 3.7854 liters)",
      "opt1" : "7.646 x 1011 liters ",
      "opt2" : "8.388 x 109 liters ",
      "opt3" : "1.287 x 109 liters",
      "opt4" : "3.887 x 109 liters",
    },
    {
      "q" : "	A solenoid has a core of material with relative permeability 400. The windings of the solenoid are insulated from the core and carry a current of 2A. if the number of turns is 1000 per meter, calculate H.",
      "opt1" : "3000 Am",
      "opt2" : "2500 Am",
      "opt3" : "4000 Am",
      "opt4" : "5000 Am",
    },
    {
      "q" : "Data representation is based on the ………….. number system, which uses two numbers to represent all data.",
      "opt1" : "binary",
      "opt2" : "biometric",
      "opt3" : "byte",
      "opt4" : "bicentennial",
    },
    {
      "q" : "The half-life for a first-order reaction is 32 s. What was the original concentration if, after 2.0 minutes, the reactant concentration is 0.062 M?",
      "opt1" : "0.84 M ",
      "opt2" : "0.89M",
      "opt3" : "0.90M",
      "opt4" : "0.99M",
    },
    {
      "q" : "The decomposition of carbon disulfide, CS2, to carbon monosulfide, CS, and sulfur is first order with k = 2.8 x 10-7 s-1 at 1000oC. CS2 CS + S What is the half-life of this reaction at 1000oC? ",
      "opt1" : "5.0 x 107 s ",
      "opt2" : "4.7 x 10-6 s",
      "opt3" : "3.8 x 105 s ",
      "opt4" : "6.1 x 104 s ",
    },
    {
      "q" : "	A die is thrown again and again until three sixes are obtained. Find the probability of obtaining third six in the sixth throw of the die.",
      "opt1" : "625/23329",
      "opt2" : "625/23328",
      "opt3" : "655/23328",
      "opt4" : "695/23328",
    },
    {
      "q" : "	A compass needle free to turn in the vertical plane, orients itself vertically at a certain place on the earth. Calculate the horizontal component 0f earth’s magnetic field.",
      "opt1" : "1.5708",
      "opt2" : "2.564	",
      "opt3" : "0.6545",
      "opt4" : "3.564564",
    }
];

function petTemplate(pet,index){
    return `
    <div id="question">
        <p>${pet.q}</p>
        <div class="answer">
          <label>
            <input type="radio" name="qn${index}" value="A">
            <span>${pet.opt1}</span>
          </label>
        </div>

        <div class="answer">
          <label>
            <input type="radio" name="qn${index}" value="B">
            <span >${pet.opt2}</span>
          </label>
        </div>

        <div class="answer">
          <label>
            <input type="radio" name="qn${index}" value="C">
            <span >${pet.opt3}</span>
          </label>
        </div>

        <div class="answer">
        <label>
          <input type="radio" name="qn${index}" value="D">
          <span >${pet.opt4}</span>
        </label>
      </div>
    </div>
    <br>
    <br>
        `
}

document.getElementById("cache").innerHTML=`
   
 
    ${jsonData.map(petTemplate).join('')}


        

`

