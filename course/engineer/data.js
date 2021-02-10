var jsonData = [
    {
        "q" : "Two resistors R1 and R2 of 4 and 6 ohm are connected in parallel across a battery.The ration of power dissipated in them p1 : p2 will be? [SUST - 2015]",
        "opt1" : "4:9",
        "opt2" : "3:2",
        "opt3" : "9:4",
        "opt4" : "1:4",
    },
    {
        "q" : "A wire of resistance 8R is bent in the form of a circle as shown. What is the resistance between the ends of diameter AB? [DU - 2018]",
        "opt1" : "2R",
        "opt2" : "3R",
        "opt3" : "4R",
        "opt4" : "5R",
    },
    {
        "q" : "A 10V battery of negligible internal resistance is connected across a 200V battery and resistance of 38Ω. Find the value of current in the circuit. [CU - 2019]",
        "opt1" : "5A",
        "opt2" : "6A",
        "opt3" : "7A",
        "opt4" : "8A",
    },
    {
        "q" : "A potentiometer wire of length 1m has a resistance of 10Ω. It is connected to a 6V battery in series with a resistance of 5Ω. Determine the emf of the primary cell which gives a balance point at 40cm. [KUET - 2016]",
        "opt1" : "1.5 V",
        "opt2" : "1.6 V",
        "opt3" : "1.8 V",
        "opt4" : "1.9 V",
    },
    {
        "q" : "Earth’s magnetic field and the angle of dip at a point is 0.3G and 30°. Calculate the vertical component of Earth’s magnetic field. [SUST - 2019]",
        "opt1" : "0.15",
        "opt2" : "0.20",
        "opt3" : "0.25",
        "opt4" : "0.35",
    },
    {
      "q" : "Earth’s magnetic field and the angle of dip at a point is 1.3G and 60°. Calculate the vertical component of Earth’s magnetic field. [DU - 2015]",
      "opt1" : "0.15",
      "opt2" : "0.20",
      "opt3" : "0.25",
      "opt4" : "0.35",
    },
    {
      "q" : "The probability of a man hitting a target is 14. How many times must he fire so that the probability of his hitting the target at least once is greater than 23? [JU - 2018]",
      "opt1" : "4",
      "opt2" : "3",
      "opt3" : "2",
      "opt4" : "1",
    },
    {
      "q" : "	Of the following name/symbol combinations of elements, which one is WRONG? [CU - 2019]",
      "opt1" : "uranium/U ",
      "opt2" : "nitrogen/N ",
      "opt3" : "nitrogen/N ",
      "opt4" : "nitrogen/Nii ",
    },
    {
      "q" : "Nitric acid is a very important industrial chemical: 1.612 x 1010 pounds of it were produced in 1992. If the density of nitric acid is 12.53 pounds/gallon, what volume would be occupied by this quantity? (1 gallon = 3.7854 liters) [SUST - 2018] ",
      "opt1" : "7.646 x 1011 liters ",
      "opt2" : "8.388 x 109 liters ",
      "opt3" : "1.287 x 109 liters",
      "opt4" : "4.254 x 105 liters",
    },
    {
      "q" : "	A solenoid has a core of material with relative permeability 400. The windings of the solenoid are insulated from the core and carry a current of 2A. if the number of turns is 1000 per meter, calculate H. [DU -2016]",
      "opt1" : "3000 Am",
      "opt2" : "2500 Am",
      "opt3" : "4000 Am",
      "opt4" : "4555 Am",
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

