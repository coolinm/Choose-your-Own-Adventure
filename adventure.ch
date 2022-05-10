#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>


// VARIABLE DEFINITION
struct character {
    string_t name;
    int hp, atk, def, spd, location;
};
string_t name, fName;


// FUNCTION DEFINITION 
int attack(struct character attacker, struct character attacked);
int dodge();
int enemyChoice();
string_t generateEnemyName(struct character player);
string_t choice(string_t choice1, string_t choice2, string_t choice3);
int startBattle(struct character player, struct character enemy);


// CREATING PLAYER CHARACTER
struct character player;
struct character friendo;

// SETTING BASE STATS
player.hp = 40;
player.atk = 7;
player.def = 5;
player.spd = 4;


// INTRODUCTION
printf("Your story starts in Asrich, a world where vast lands stretch across for millions of miles.\nA world many creatures big and small call home.\n");
sleep(10);
printf("Asrich is ruled by a vengeful and oppressive king named Damion. Everyone who didn't work for Damion hated him.\n");
sleep(10);
printf("You live in a small village of humans that for years remained almost untouched Damion's greedy grasp.\nBut 4 months ago, his troops ransacked your town, killing many people you had known for years.\n");
sleep(15);
printf("Resentment for King Damion's rule has led your people to train for a storm on the castle in attempt to kill Damion.\nYou are one of the few who signed up to accompany the raid party.\n");
sleep(15);
printf("Your story starts in a small training hut, where you and your friend you've known for so many years battles you\nwith a dull wooden sword.\n");
sleep(15);
printf("But first, what is your name?\n");
scanf("%s", &name);
printf("And what is your friend's name?\n");
scanf("%s", &fName);
printf("You and ", fName,  " stand on opposite ends of the training hut. For a brief period, neither of you move.\nThen, suddenly, at nearly the exact same time, you charge at each other.\n");
sleep(15);

player.name = name;
friendo.name = fName;

int fOutcome = startBattle(player, friendo);
string_t fChoice;


// FIRST CHOICE



// Win
if(fOutcome = 1){
    printf("You knock down ", friendo.name, ", and they look back up at you with a surprised smile on their face.\n\"Wow! Good fight!\"\n");
    sleep(7);
    printf("What do you do now?\nHelp ", enemy.name, " get back up (1) or give up and put your sword away (2)?\nType 1 or 2 to select your choice.\n"):;
    scanf("%s", &fChoice);
    
    while(fChoice != "1" && fChoice != "2"){
        printf("That is not a valid option. Please type 1 or 2 to select your option.\n");
        scanf("%s", &fChoice);
    };
    
    // Help
    if (fChoice == "1"){
        printf("You hold your hand out to ", friendo.name, ", pulling them back up to their feet. They smile at you\nhappily. Then, a muscular, serious-faced man walks into the training hut.\n");
        sleep(7);
        printf("\"Jacob! What is it?\" ", friendo.name, " asks. \"It's time. The raid party is almost finished. We\n need a few more people to accompany us. You two get your things ready.\" Jacob remarks.\n");
        sleep(7);
        printf("You and your companion share an expression of both excitement and nervousness. Then, looking back\nat Jacob, you nod.");
        sleep(5);
        printf("A few minutes later, you and the raid party set off into the forest in the direction of the castle.\nEveryone is silent for a long while, everyone secretly afraid of what might happen when they reach the castle.\n");
        sleep(8);
        printf("Then, about halfway across forest, you feel a unfamiliar dread seep into your heart. Looking at\neveryone else, they seem to be affected, too. Then you see it. The terrifying beast that walks the forest.\n");
        sleep(7);
        printf("The Twilight Lich. Legends tell of a ghoulish monster who stalks between the trees, searching\nfor weary travelers to consume the souls of. You freeze, and so does your entire party. It hasn't noticed you yet.\n");
        sleep(8);
        printf("You quickly think of a plan.");
        
        string_t sChoice = choice("Attack the beast", "run past it", "sneak around it");
        
        // Attack
        if(sChoice == "1"){
            printf("You and your party charge the great Twilight Lich. It's head whips towards you, and with\na devilish screech, it begins charging back at you. When it gets to you, it uses it's razor sharp claws to quickly dispatch most of your party.\n");
            sleep(9);
            printf("Darting around the trees of the bloody battlefield with the grace of a gazelle, it takes\nout your team with deadly precision. Eventually, the only person left is you.\n");
            sleep(7);
            printf("The monster stops in front of you, staring straight into your soul with dead eyes. Fear\nhas overtaken you, and you cannot move. With one last swing of it's claws, everything fades to black.\n");
            sleep(7);
            printf("You achieved the Death 1 Ending.");
        // Run
        } else if (sChoice == "2"){
            
            
        // Sneak
        } else if (sChoice == "3"){
            
            
        };
        
    // Surrender
    } else if (fChoice == "2"){
        
        
    };
    
    
// Lose
} else if (fOutcome = 0) {
    
};















/* FUNCTION CODE */

// CHOICE
string_t choice(string_t choice1, string_t choice2, string_t choice3){
    string_t choiceNum;
    printf("What do you do? ", choice1, " (1), ", choice2, " (2), ", choice3, " (3).\n");
    printf("Type 1, 2, or 3 to select an option.\n");
    scanf("%i", &choiceNum);
    
    if(choiceNum){
        while(choiceNum != "1" && choiceNum != "2" && choiceNum != "3"){
            printf("That is not a valid choice. Please type 1, 2 or 3 to select your choice.\n");
            scanf("%d", &choiceNum);
        
        }
    } else {
        printf("That is not a valid choice. Please type 1, 2 or 3 to select your choice.\n");
        scanf("%i", &choiceNum);
    }
    
    return(choiceNum);
}


// START BATTLE
int startBattle(struct character player, struct character enemy){
    
    printf("You begin your battle with ", enemy.name, ".\n");
    
    enemy.hp = player.hp;
    enemy.atk = player.atk;
    enemy.def = player.def;
    enemy.spd = player.spd;
    
    while(player.hp > 0 && enemy.hp > 0){
        int damage = 0, eDamage = 0;
        int attacked = 0, eAttacked = 0;
        int defend = 0, eDefend = 0;
        int dodged = 0, eDodged = 0;
        string_t battleChoice;
        printf("What would you like to do? Attack (1), Defend (2), or Dodge (3)?\nType 1, 2, or 3 to select.\n");
        scanf("%s", &battleChoice);
        
        while(battleChoice != "1" && battleChoice != "2" && battleChoice != "3"){
            printf("That is not a valid choice. Please type 1, 2 or 3 to select your choice.\n");
            scanf("%s", &battleChoice);
        };
        
        int eChoice = enemyChoice();
        
        switch(eChoice){
            case 1:
                eDamage = attack(enemy, player);
                attacked = 1;
                break;
            case 2:
                eDefend = 1;
                break;
            case 3:
                eDodged = dodge();
                if (eDodged == 0){
                    int eDodgeFail = 1;
                };
                break;
        };
        
        switch(battleChoice){
            case "1":
                damage = attack(player, enemy);
                attacked = 1;
                break;
            case "2":
                defend = 1;
                break;
            case "3":
                dodged = dodge();
                if (dodged = 0) {
                    int dodgeFail = 1;
                };
                break;
            
        };
        
        if (attacked == 1){
            if (eAttacked = 1){
                printf("You both attack each other. You deal ", damage, " damage, while ", enemy.name, " deals ", eDamage, " damage.\n\n");
            } else if (eDefend = 1){
                damage = damage / 2;
                printf("You attack while ", enemy.name, " defends, and you do ", damage, " damage.\n\n");
            } else if (eDodged = 1) {
                damage = 0;
                printf("You try attacking, but ", enemy.name, " dodges the attack.\n\n");
            };
            
            enemy.hp = enemy.hp - damage;
            player.hp = player.hp - eDamage;
        };
        
        if(defend == 1){
            if (eAttacked = 1){
                eDamage = eDamage / 2;
                printf("You defend against ", enemy.name, "'s attack, and it deals ", eDamage, " damage.\n\n");
            } else if (eDodged = 1) {
                damage = 0;
                printf("You defend, expecting an attack, but ", enemy.name, " does nothing and waits.\n\n");
            } else if (eDefend = 1) {
                printf("You both defend, expecting an attack.\n\n");
            };
            
            enemy.hp = enemy.hp - damage;
            player.hp = player.hp - eDamage;
        };
        
        if(dodged == 1){
            if(eAttacked = 1){
                damage = 0;
                printf(enemy.name, " tries attacking, but you dodge the attack.\n\n");
            } else if (eDefend = 1){
                printf("You prepare to dodge an attack, but ", enemy.name, " prepared to defend instead.\n\n");
            } else if (eDodged = 1){
                printf("You prepare to dodge an attack, but so does ", enemy.name, ".\n\n");
            };
            
            enemy.hp = enemy.hp - damage;
            player.hp = player.hp - eDamage;
        };
        
        printf("You now have ", player.hp, " HP.\n", enemy.name, " now has ", enemy.hp, " HP.\n\n");
            
    };
    
    if (player.hp > enemy.hp){
        printf("Congratulations! You won the battle against ", enemy.name, "!\n");
        sleep(5);
        return(1);
    } else if (player.hp < enemy.hp){
        printf("You lost against ", enemy.name, "...\n");
        sleep(5);
        return(0);
    };
};

// ATTACK
int attack(struct character attacker, struct character attacked){
    int damage = attacker.atk;
    
    return(damage);
    
};


// DODGE
int dodge(){
    int num = randint(0, 1);
    
    return(num);
};


// ENEMY CHOICE
int enemyChoice(){
    int num = randint(1, 3);
    
    return(num);
};

/* forestID = 1, desertID = 2, swampID = 3, mountainID = 4, caveID = 5; */

/*
    Generates a random name for an enemy based on the current location of the player.
*/

string_t generateEnemyName(struct character player){
    int locationID = player.location;
    string_t forestNames[10] = {"Goblin", "Wolf", "Skeleton", "Slimey Slime", "Hellhound", "Giant Spider", "Blackwood Elf", "Forest Mage", "Tabaxi", "Traveler"};
    string_t desertNames[8] = {"Serpent", "Giant Emperor Scorpion", "Desert Wraith", "Shade", "Hyena", "Axe Beak", "Traveler", "Basilisk"};
    string_t swampNames[6] = {"Kappa", "Draugr", "Slime", "Crocodile", "Hydra", "Giant Toad"};
    string_t mountainNames[6] = {"Manticore", "Griffin", "Golem", "Troll", "Geovishap", "Sky Hag"};
    string_t caveNames[5] = {"Rake", "Cave Spider", "Hellbeast", "Goblin", "Dark"};
    string_t enemyName;
    int num = 0;
    
    
    
    srand(time(0));
    
    switch(locationID){
        case 1:
            num = (rand() % (9 - 0 + 1)) + 0;
            enemyName = forestNames[num];
            break;
        case 2:
            num = (rand() % (7 - 0 + 1)) + 0;
            enemyName = desertNames[num];
            break;
        case 3:
            num = (rand() % (5 - 0 + 1)) + 0;
            enemyName = swampNames[num];
            break;
        case 4:
            num = (rand() % (5 - 0 + 1)) + 0;
            enemyName = mountainNames[num];
            break;
        case 5:
            num = (rand() % (4 - 0 + 1)) + 0;
            enemyName = caveNames[num];
            break;
    };
    
    return(enemyName);
};
