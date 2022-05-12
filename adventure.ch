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
            printf("You achieved the Death 1 Ending.\n");
            exit();
            
        // Run
        } else if (sChoice == "2"){
            printf("You look to your party, quietly communicating to them to run as fast as they can past\nthe Lich on your signal. Shortly after, you wave your hand, signaling them to begin running.\n");
            sleep(7);
            printf("You run, and your team follows. The Lich hears you and whips its head in your direction.\nIt lets out a violent roar and begins striding in your direction. You yell to the party to look out and not to stop running.\n");
            sleep(9);
            printf("The Lich catches a few of your men, killing them switfly. Despite this, everyone keeps running,\nfearing what will happen to them if they stop. You hear the fierce galloping of the Lich hot on your tail.\n");
            sleep(8);
            printf("You eventually make it out of the forest. Looking back, you see that you have lost only a few men.\nAfter quickly treating any wounds, you continue on, making it to the castle soon after.\n");
            sleep(8);
            printf("As you enter the castle through an unsecured backdoor, you quickly find yourself faced with an\nonslaught of guards. A member of your party tells you and your friend to run to the throne room, and that they will hold off the guards.\n");
            sleep(9);
            printf("You and ", friendo.name, " run to the throne room, where King Damion sits. He looks at you.\n\"I've been expecting you,\" he says. He starts monologuing about his evil plan, and despite everything, you agree with him. You don't know why, but you do.\n");
            sleep(9);
            printf("You look to your friend, who looks ready to kill the king. You put your hand on your sword.\nYour brain has been corrupted by greed, and all you can think about is the power that being King would grant you. You pull out your sword.\n");
            sleep(8);
            printf("You swing your sword at your friend. Caught off, the sword goes straight through his stomach.\nFalling sideways, his body hits the floor, dead and cold. King Damion smiles evily at you, and you smile back.\n");
            sleep(5);
            printf("You achieved the Greed Ending.\n");
            exit();
            
        // Sneak
        } else if (sChoice == "3"){
            printf("You and your team sneak around the Lich, successfully avoiding it's wrath. You make it out of\nthe forest and get into the castle through a small backdoor. With some trouble, you make it past the waves and waves of guards that find you throughout the castle.\n");
            sleep(8);
            printf("You make it to the throne room, where King Damion sits. He is very powerful, but heavily outnumbered.\nYou kill him after a short struggle, saving the kingdom.\n");
            sleep(5);
            printf("You achieved the Happy 1 Ending.\n");
            exit();
            
        };
        
    // Surrender
    } else if (fChoice == "2"){
        printf("You give up and put your sword away. ", friendo.name, " stares at you, a little disappointed that you gave up.\nThey then light up as if they remembered something important. \"Hey, do you think you would be up to search for an artifact in the desert?\" They ask.\n");
        sleep(9);
        printf("\"Sure,\" you say. You quickly pack your stuff, setting off towards the artifact. You don't know what it does, as\n", friendo.name, " kept the details vague, but they've never lead you wrong, right? What's the worst that could happen?\n");
        sleep(7);
        printf(friendo.name, " tells you about 3 ways to reach the desert. You can travel through a murky swamp, one through a\valley, and one across a perilous mountain.\n");
        sleep(5);
        
        string_t sChoice2 = choice("Travel through the swamp", "valley", "mountain");
        
        // Swamp
        if(sChoice2 == "1"){
            printf(friendo.name, " looks a little bit uncertain, but agrees. \"", player.name, ", are you sure? It seems...\nunpleasent...\" they say.")
            sleep(5);
            printf("You set off towards the swamp. After a short journey, filled with frogs, snakes, and a few dangerous monsters,\nyou reach the desert. You look into your bag, and with a dark sense of dread, you realize you are dangerously low on food and water.\n");
            sleep(7);
            printf("To make matters worse, after an hour of walking through the sweltering desert, you and ", friendo.name, " are\nseperated by a sandstorm. You wander the desert for what seems like days, searching for any signs of life. But there is nothing.\n");
            sleep(7);
            printf("Tired, thirsty, and hungry, you give up, falling to your knees, then down onto your side in the sand. Laying\ndown in the harsh climate, you surrender, dying alone in the desert.\n");
            sleep(6);
            printf("You achieved the Surrender Ending.\n");
            sleep(5);
            exit();
            
        // Valley
        } else if (sChoice2 == "2"){
            printf("You set off to the valley. After only a few hours of trekking, you make it safely there. The valley is beautiful,\nand you admire the river flowing through it as you continue on.\n");
            sleep(7);
            printf("With little trouble, you travel through the valley. You reach the desert, where your map leads to the location of\nthe ruins where the artifact is located.\n");
            sleep(6);
            printf("\"", player.name ", I can't find anything...", friendo.name, " says. After a while, a local desert dweller finds\nyou and tells them that the artifact they search for was taken long ago.\n");
            sleep(7);
            printf("Disappointed but slightly amused by the situation, you and your companion return home unharmed.\n");
            sleep(4);
            printf("You achieved the Happy 2 Ending.\n");
            exit();
            
        // Mountain
        } else if (sChoice2 == "3"){
            printf("You leave home towards the mountain. ", friendo.name, " is uneasy and quiet for the whole trip,\nbut you chalk it up to them just being a little nervous to pass over the mountain.\n");
            sleep(7);
            printf("Making it to the desert, you look to your map to find the ancient ruins that hold the artifact.\nFinding the ruins quickly, your search isn't long before you find the artifact. You show it to your friend, but they don't seem excited.\n");
            sleep(9);
            printf("Walking away from the ruins with ", friendo.name, ", you look at the artifact carefully. But\nsuddenly, you feel a pain in your back. A moment later, the pain is searing, and you fall to the ground.\n");
            sleep(8);
            printf(friendo.name, " has stabbed you. The world around you becomes blurry and faint, and you only hear one thing before you\n slip away. \"I'm sorry, ", player.name, ".\" ", friendo.name, " says.\n");
            sleep(7);
            printf("You achieved the Betrayal Ending.\n");
            exit();
            
        };
        
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
