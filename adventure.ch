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
int dodge(struct character dodger, int attacked);
int enemyChoice(struct
string_t generateEnemyName(struct character player);
string_t choice(string_t choice1, string_t choice2, string_t choice3);
void startBattle(struct character player, struct character enemy);
    

// CREATING PLAYER CHARACTER
struct character player;
struct character friendo;
    
printf("What is your character's name?\n");
scanf("%s", &name);
    
player.hp = 40;
player.atk = 5;
player.def = 3;
player.spd = 4;


// INTRODUCTION
printf("Your story starts in Asrich, a world where vast lands stretch across for millions of miles. A world many creatures big and small call home.\n");
sleep(10);
printf("Asrich is ruled by a vengeful and oppressive king named Damion. Everyone who didn't work for Damion hated him.\n");
sleep(10);
printf("You live in a small village of humans that for years remained almost untouched Damion's greedy grasp. But 4 months ago, his troops ransacked your town,\nkilling many people you had known for years.\n");
sleep(15);
printf("Resentment for King Damion's rule has led your people to train for a storm on the castle in attempt to kill Damion. You are one of the few who signed up\nto accompany the raid party.\n");
sleep(15);
printf("Your story starts in a small training hut, where you and your friend you've known for so many years battles you with a dull wooden sword.\n");
sleep(15);
printf("But first, what is your name?\n");
scanf("%s", &name);
printf("And what is your friend's name?\n");
scanf("%s", &fName);
printf("You and ", fName,  " stand on opposite ends of the training hut. For a brief period, neither of you move.\nThen, suddenly, at nearly the exact same time, you charge at each other.");
sleep(15);


player.name = name;
friendo.name = fName;


start














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
        string_t battleChoice;
        printf("What would you like to do? Attack (1), Defend (2), or Dodge (3)?\nType 1, 2, or 3 to select.\n");
        scanf("%s", &battleChoice);
        
        while(battleChoice != "1" && battleChoice != "2" && battleChoice != "3"){
            printf("That is not a valid choice. Please type 1, 2 or 3 to select your choice.\n");
            scanf("%s", &battleChoice);
        };
        
        int eChoice = enemyChoice;
        
        switch(eChoice){
            case 1:
                int eDamage = attack(enemy, player);
                int eAttacked = 1;
                break;
            case 2:
                int eDefend = 1;
                break;
            case 3:
                int eDodged = dodge();
                break;
        };
        
        switch(battleChoice){
            case "1":
                int damage = attack(player, enemy);
                int attacked = 1;
                break;
            case "2":
                int defend = 1
                break;
            case "3":
                int dodged = dodge();
                break:
        };
        
        if(attacked == 1){
            if (eDefend == 1){
                damage = damage % 2;
                printf("You attack while ", enemy.name, " defends, and you do ", damage, " damage.\n");
            } else if (eDodged == 1) {
                damage = 0;
                printf("You try attacking, but ", enemy.name, " dodges the attack.\n");
            } else {
                printf("You attack ", enemy.name, " dealing ", damage, " damage.\n");
            };
            
            enemy.hp = enemy.hp - damage;
            
            printf(enemy.name, " now has ", enemy.hp, " HP.");
        }
        
        if(defend == 1){
            if (eAttacked == 1){
                printf(
            
    }
    
    
};

// ATTACK
int attack(struct character attacker, struct character attacked){
    
};


// DODGE
int dodge(){
    int num = randint(1, 2);

    if (num == 1){
        return(1);
    } else if (num == 2){
        return(2);
    };
};


// ENEMY CHOICE
int enemyChoice(struct character player, struct character enemy){
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

hawe;iopuo;jhklrh
