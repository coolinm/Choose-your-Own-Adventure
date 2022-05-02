#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>


struct character {
    string_t name;
    int lvl, hp, atk, def, spd, armor, weapon, location;
};

void attack(struct character player, struct character enemy);
void createEnemy(struct character player);

string_t name;

struct character player;
struct character enemy1;
    
printf("What is your character's name?\n");
scanf("%s", &name);
    
player.name = name;
player.lvl = 1;
player.hp = 20;
player.atk = 10;
player.def = 10;
player.spd = 4;
player.weapon = "Wooden Sword";
player.armor = "None";

printf("Your character is named ", player.name, "\n");

void attack(struct character player, struct character enemy){
    
    if (enemy.spd < player.spd){
        
    } else {
        
    };
}

void createEnemy(struct character player){
    
    int level = player.lvl;
    int upper = level + 4;
    int lower = level - 2;
    int enemyLevel = (rand() % (upper - lower + 1)) + lower;
    
    if (enemyLevel < 1){
        enemyLevel = 1;
    };
    
    int basenum = enemyLevel - 1;
    
    if (basenum < 1){
        basenum = enemyLevel;
    };
    
    struct character enemy;
        
    enemy.lvl = enemyLevel;
    enemy.name = 
    
}

/*
Chooses a random enemy name from a list.
The list it chooses from changes based on the location of the player character.
*/

int forestID = 1, desertID = 2, swampID = 3, mountainID = 4, oceanID = 5, caveID = 6;

void generateEnemyName(struct character player){
    int locationID = player.location
    string_t forestNames[10] = {"Goblin", "Wolf", "Skeleton", "Slimey Slime", "Hellhound", "Giant Spider", "Blackwood Elf", "Forest Mage", "Tabaxi", "Traveler"};
    string_t desertNames[8] = {"Serpent", "Giant Emperor Scorpion", "Desert Wraith", "Shade", "Hyena", "Axe Beak", "Traveler", "Basilisk"}
    string_t swampNames[6] = {"Kappa", "Draugr", "Slime", "Crocodile", "Hydra", "Giant Toad"};
    string_t mountainNames[6] = {"Manticore", "Griffin", "Golem", "Troll", "Geovishap", "Sky Hag"};
    string_t caveID[5] = {"Rake", "Cave Spider", "Hellbeast", "Goblin", "Dark"};
    string_t enemyName;
    
    
    
    switch(locationID){
        case 1:
            
};
