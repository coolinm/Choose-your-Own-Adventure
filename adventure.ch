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
void startBattle(struct character player, struct character enemy);
    

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


startBattle(player, friendo);

















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
void startBattle(struct character player, struct character enemy){
    
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
                printf("Enemy attacks");
                break;
            case 2:
                eDefend = 1;
                printf("Enemy defends");
                break;
            case 3:
                eDodged = dodge();
                if (eDodged == 0){
                int eDodgeFail = 1;
                printf("Enemy dodges");
                break;
                };
        };
        
        switch(battleChoice){
            case "1":
                damage = attack(player, enemy);
                attacked = 1;
                printf("You attack");
                break;
            case "2":
                defend = 1;
                printf("You defend");
                break;
            case "3":
                dodged = dodge();
                if (dodged = 0) {
                int dodgeFail = 1;
                printf("You dodge");
                break;
                };
        };
        
        if (attacked = 1){
            if (eAttacked = 1){
                printf("You both attack each other. You deal ", damage, " damage, while ", enemy.name, " deals ", eDamage, " damage.\n");
            } else if (eDefend = 1){
                damage = damage / 2;
                printf("You attack while ", enemy.name, " defends, and you do ", damage, " damage.\n");
            } else if (eDodged = 1) {
                damage = 0;
                printf("You try attacking, but ", enemy.name, " dodges the attack.\n");
            };
            
            enemy.hp = enemy.hp - damage;
        };
        
        if(defend = 1){
            if (eAttacked = 1){
                eDamage = eDamage / 2;
                printf("You defend against ", enemy.name, "'s attack, and it deals ", eDamage, " damage.\n");
            } else if (eDodged = 1) {
                damage = 0;
                printf("You defend, expecting an attack, but ", enemy.name, " does nothing and waits.\n");
            } else if (eDefend = 1) {
                printf("You both defend, expecting an attack.\n");
            };
            
            player.hp = player.hp - eDamage;
        };
        
        if(dodged = 1){
            if(eAttacked = 1){
                damage = 0;
                printf(enemy.name, " tries attacking, but you dodge the attack.\n");
            } else if (eDefend = 1){
                printf("You prepare to dodge an attack, but ", enemy.name, " prepared to defend instead.\n");
            } else if (eDodged = 1){
                printf("You prepare to dodge an attack, but so does ", enemy.name, ".\n");
            };
        };
        
        printf("You now have ", player.hp, " HP.\n", enemy.name, " now has ", enemy.hp, " HP.\n");
            
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
